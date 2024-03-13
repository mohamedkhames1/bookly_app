import 'package:flutter/material.dart';
import '../../../../const.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'search',
        suffixIcon: Opacity(
          opacity: .8,
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(ksearch),
          ),
        ),
      ),
    );
  }



  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: Colors.white,
        ));
  }
}
