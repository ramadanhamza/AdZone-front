import 'package:adzone/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:adzone/size_config.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
