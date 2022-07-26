import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/reset_password.dart';
import 'package:login_signup_ui_starter/screens/signup.dart';
import 'package:login_signup_ui_starter/theme.dart';
import 'package:login_signup_ui_starter/widgets/login_form.dart';
import 'package:login_signup_ui_starter/widgets/login_option.dart';
import 'package:login_signup_ui_starter/widgets/primary_button.dart';
import 'package:eventify/eventify.dart';

final EventEmitter emitter = new EventEmitter();

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PrimaryButton _primaryButton = PrimaryButton(
      buttonText: 'Log In',
    );
    LogInForm _logInForm = LogInForm();
    //run function after 5 seconds

    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'New to this app?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              _logInForm,
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen()));
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  _primaryButton.changeState('animate');
                  _logInForm.validate();
                },
                child: _primaryButton,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Or log in with:',
                style: subTitle.copyWith(color: kWhiteColor),
              ),
              SizedBox(
                height: 20,
              ),
              LoginOption(),
            ],
          ),
        ),
      ),
      backgroundColor: kPrimaryColor,
    );
  }
}