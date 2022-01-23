import 'package:flutter/material.dart';
import 'package:travely/shared/theme.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: const Center(
        child: Text('User Page'),
      ),
    );
  }
}
