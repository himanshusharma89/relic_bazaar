import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:relic_bazaar/helpers/input_validators.dart';
import 'package:relic_bazaar/model/user_model.dart';
import 'package:relic_bazaar/services/cloud_storage_service.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/widgets/show_error_dialog.dart';
import 'package:relic_bazaar/widgets/text_field_decoration.dart';

class GetUserDetailsView extends StatefulWidget {
  @override
  _GetUserDetailsViewState createState() => _GetUserDetailsViewState();
}

class _GetUserDetailsViewState extends State<GetUserDetailsView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode _nameFocusNode = FocusNode(),
      _phoneNumberFocusNode = FocusNode();

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _phoneNumberFocusNode.dispose();
    super.dispose();
  }

  bool _isLoading = false;
  File _image;
  Future<void> getImage({@required ImageSource source}) async {
    setState(() {
      _isLoading = true;
    });
    final ImagePicker _picker = ImagePicker();
    final PickedFile _pickedFile = await _picker.getImage(source: source);
    if (_pickedFile != null) {
      setState(() {
        _image = File(_pickedFile.path);
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      showErrorDialog(
        errorMessage: 'No Image Selected',
        context: context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    String _name, _phoneNumber;
    return ModalProgressHUD(
      inAsyncCall: _isLoading,
      color: Colors.black54,
      opacity: 0.7,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: _height / 28,
                    ),
                    const Text(
                      'Please Enter Your Details',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: _height / 28,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => Dialog(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  onTap: () {
                                    getImage(source: ImageSource.camera);
                                    Navigator.of(context).pop();
                                  },
                                  title: const Text('Camera'),
                                ),
                                const Divider(),
                                ListTile(
                                  onTap: () {
                                    getImage(source: ImageSource.gallery);
                                    Navigator.of(context).pop();
                                  },
                                  title: const Text('Gallery'),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: RelicBazaarStackedView(
                        upperColor: Colors.white,
                        height: _height * 0.2,
                        width: _height * 0.18,
                        child: _image == null
                            ? const Icon(
                                Icons.add_a_photo,
                                size: 40,
                              )
                            : Image.file(_image),
                      ),
                    ),
                    SizedBox(
                      height: _height / 28,
                    ),
                    RelicBazaarStackedView(
                      height: _height * 0.07,
                      width: _width * 0.7,
                      child: TextFormField(
                        decoration: textFieldDecoration(hintText: 'Name'),
                        focusNode: _nameFocusNode,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          _nameFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(_phoneNumberFocusNode);
                        },
                        onSaved: (String value) {
                          _name = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: _height / 28,
                    ),
                    RelicBazaarStackedView(
                      height: _height * 0.07,
                      width: _width * 0.7,
                      child: TextFormField(
                        decoration:
                            textFieldDecoration(hintText: 'Phone Number'),
                        keyboardType: TextInputType.number,
                        focusNode: _phoneNumberFocusNode,
                        textInputAction: TextInputAction.done,
                        onSaved: (String value) {
                          _phoneNumber = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: _height / 10,
                    ),
                    RelicBazaarStackedView(
                      upperColor: Colors.white,
                      height: _height * 0.07,
                      width: _width * 0.4,
                      child: TextButton(
                        onPressed: () {
                          _formKey.currentState.save();
                          _inputValidator(
                            name: _name,
                            phoneNumber: _phoneNumber,
                          );
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _inputValidator({
    @required String name,
    @required String phoneNumber,
  }) {
    setState(() {
      _isLoading = true;
    });
    final InputValidators _inputValidators = InputValidators();
    final User _user = FirebaseAuth.instance.currentUser;

    if (_inputValidators.nameValidator(name, context) &&
        _inputValidators.phoneNumberValidator(phoneNumber, context)) {
      _user.updateProfile(displayName: name);
      final CloudStorageService _storageService = CloudStorageService();
      if (_image != null) {
        _storageService
            .uploadFile(
          _image,
          UserModel(
            name: name,
            phoneNumber: phoneNumber,
            uid: _user.uid,
          ),
        )
            .then((String errorMessage) {
          if (errorMessage != null) {
            showErrorDialog(
              errorMessage: errorMessage,
              context: context,
            );
          }
          setState(() {
            _isLoading = false;
          });
        });
      }
    }
  }
}
