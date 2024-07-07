import 'package:flutter/material.dart';

class CustomFailureMessage extends StatelessWidget {

  final String errorMsg;

  const CustomFailureMessage({super.key, required this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMsg),);
  }
}
