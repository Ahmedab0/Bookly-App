
import 'package:flutter/material.dart';

class CustomFailureMessage extends StatelessWidget {
  const CustomFailureMessage({super.key, required this.errorMsg});

  final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMsg));
  }
}
