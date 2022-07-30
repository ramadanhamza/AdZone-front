import 'package:flutter/material.dart';
import 'package:adzone/screens/login.dart';
import 'package:adzone/theme.dart';
import 'package:adzone/widgets/primary_button.dart';
import 'package:adzone/widgets/reset_form.dart';
import 'package:adzone/widgets/return_arrow.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ReturnArrow(),
          Padding(
            padding: kDefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //return arrow back
                ReturnArrow(),
                SizedBox(
                  height: 250,
                ),
                Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: kWhiteColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Please enter your email address',
                  style: subTitle.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                ResetForm(),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInScreen(),
                          ));
                    },
                    child: PrimaryButton(buttonText: 'Reset Password')),
              ],
            ),
          )
        ],
      ),
      backgroundColor: kPrimaryColor,
    );
  }
}
