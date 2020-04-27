import 'package:firebase_auth/firebase_auth.dart';
import 'package:hotelbooking/ui/widgets/text_input.dart';
import 'package:hotelbooking/utils/constants.dart';
import 'package:hotelbooking/ui/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String _email;
  String _password;
  bool showSpinner = false;

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
                  color: Color(kLightBlue), text: 'Login', function: login),
            ],
          ),
        ),
      ),
    );
  }

  /*
  void login() async {

    var uri = Uri.http(kBaseUri, kUserCsrfToken);
    var req1 = await http.post(uri, )


    var formData = {
      'email': 'admin',
      'password' : 'admin',
      'csrfToken' : '29fc9e46ca19867b2c143f6d423a33657420ec8e-1587930587051-c5acd3df5902c4274f776de9'
    };

    var uri = Uri.http(kBaseUri, '$kUserUri/doLogin');
    var request = await http.post(uri,headers: headers,body: formData);
    print(request.body);
    print(request.statusCode);
  }
   */

  void login() async {
    setState(() {
      showSpinner = true;
    });
    try {
      final user = await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
      if (user != null) {
        setState(() {
          showSpinner = false;
        });
        // TODO => Push Towards Hotels list
        Navigator.pushNamed(context, kHotelsDashboard);
      } else {
        setState(() {
          showSpinner = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
