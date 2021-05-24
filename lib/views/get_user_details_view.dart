import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/helpers/input_validators.dart';
import 'package:relic_bazaar/services/auth_service.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/widgets/show_error_dialog.dart';
import 'package:relic_bazaar/widgets/text_field_decoration.dart';

class GetUserDetailsView extends StatefulWidget {
  const GetUserDetailsView({
    @required this.email,
    @required this.password,
  });

  final String email, password;

  @override
  _GetUserDetailsViewState createState() => _GetUserDetailsViewState();
}

class _GetUserDetailsViewState extends State<GetUserDetailsView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  final FocusNode _nameFocusNode = FocusNode(),
      _phoneNumberFocusNode = FocusNode();

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _phoneNumberFocusNode.dispose();
    super.dispose();
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
                    RelicBazaarStackedView(
                      upperColor: Colors.white,
                      height: _height * 0.2,
                      width: _width * 0.4,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_a_photo,
                          size: 40,
                        ),
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
                            email: widget.email,
                            password: widget.password,
                          ).then(
                            (bool isSignUpSuccess) {
                              if (isSignUpSuccess) {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                  RouteConstant.DASHBOARD_SCREEN,
                                  (Route<dynamic> route) => false,
                                );
                              }
                            },
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

  Future<bool> _inputValidator({
    @required String email,
    @required String password,
    @required String name,
    @required String phoneNumber,
  }) async {
    setState(() {
      _isLoading = true;
    });
    bool _isSignUpSucess = true;
    final AuthenticationService _authenticationService =
        AuthenticationService();
    final InputValidators _inputValidators = InputValidators();

    if (_inputValidators.nameValidator(name, context) &&
        _inputValidators.phoneNumberValidator(phoneNumber, context)) {
      final String _errorMessage = await _authenticationService.userSignUp(
        email: email,
        password: password,
        name: name,
        phoneNumber: phoneNumber,
      );
      setState(() {
        _isLoading = false;
      });
      if (_errorMessage != null) {
        _isSignUpSucess = false;
        showErrorDialog(
          errorMessage: _errorMessage,
          context: context,
        );
      }
    } else {
      _isSignUpSucess = false;
      setState(() {
        _isLoading = false;
      });
    }
    return _isSignUpSucess;
  }
}
