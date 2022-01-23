import 'package:flutter/material.dart';
import 'package:travely/shared/theme.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: const Center(
        child: Text('BookMark Page'),
      ),
    );
  }
}
