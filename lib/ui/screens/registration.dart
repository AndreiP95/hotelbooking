import 'package:hotelbooking/ui/widgets/text_input.dart';
import 'package:hotelbooking/utils/constants.dart';
import 'package:hotelbooking/ui/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String _email;
  String _password;
  bool showSpinner = false;

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              CustomInputField(
                type: TextInputType.emailAddress,
                onInputChanged: (value) {
                  _email = value;
                },
                hiddenInput: false,
                hint: 'Enter your email',
              ),
              SizedBox(
                height: 8.0,
              ),
              CustomInputField(
                hiddenInput: true,
                onInputChanged: (value) {
                  _password = value;
                },
                type: TextInputType.text,
                hint: 'Enter your password',
              ),
              SizedBox(
                height: 24.0,
              ),
              BaseButton(
                color: Color(kDarkBlue),
                function: register,
                text: 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void register() async {
    var queryParameters = {
      'email': _email,
      'nickname': 'Costel',
      'password': _password
    };

    var uri = Uri.http(kBaseUri, kUserUri);
    var request = await http.post(uri);
    print(request.body);
    print(request.statusCode);

  }
/*
  void register() async {
    try {
      setState(() {
        showSpinner = true;
      });
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: _email, password: _password);
      if (newUser != null) {
        setState(() {
          showSpinner = false;
        });
        Navigator.pushNamed(context, kLoginHotelsList);
      }
    } catch (e) {
      setState(() {
        showSpinner = false;
      });
    }
  }*/
}
