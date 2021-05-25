import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/helpers/input_validators.dart';
import 'package:relic_bazaar/model/user_model.dart';
import 'package:relic_bazaar/services/auth_service.dart';
import 'package:relic_bazaar/services/db_userdata.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/widgets/text_field_decoration.dart';

class GetUserDetailsView extends StatefulWidget {
  @override
  _GetUserDetailsViewState createState() => _GetUserDetailsViewState();
}

class _GetUserDetailsViewState extends State<GetUserDetailsView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode _nameFocusNode = FocusNode(),
      _phoneNumberFocusNode = FocusNode();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _phoneNumberFocusNode.dispose();
    super.dispose();
  }

  final DbUserData userdata = DbUserData.instance;

  bool checkUsername(String uid) {
    UserModel user = UserModel();
    userdata.fetchData(uid).then(
          (UserModel value) => user = value,
        );
    return user.name != null;
  }

  @override
  void initState() {
    super.initState();
    final User user = _auth.currentUser;
    if (checkUsername(user.uid)) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        RouteConstant.DASHBOARD_SCREEN,
        (Route<dynamic> route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    String _name, _phoneNumber;

    return Scaffold(
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
                      decoration: textFieldDecoration(hintText: 'Phone Number'),
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
    );
  }

  void _inputValidator({
    @required String name,
    @required String phoneNumber,
  }) {
    final InputValidators _inputValidators = InputValidators();
    final User user = _auth.currentUser;
    if (_inputValidators.nameValidator(name, context) &&
        _inputValidators.phoneNumberValidator(phoneNumber, context)) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        RouteConstant.DASHBOARD_SCREEN,
        (Route<dynamic> route) => false,
        arguments: user.uid,
      );
      AuthenticationService.updateUserInFirebase(
        userName: name,
        phoneNumber: phoneNumber,
        email: user.email,
        uid: user.uid,
      );
    }
  }
}
