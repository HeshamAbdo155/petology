import 'package:flutter/material.dart';

class DefaultTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  // final IconData prefix;
  final IconData? suffix;
  final VoidCallback? suffixPressed;
  final String? Function(String?) validate;
  final bool isPassword;
  final TextInputType type;
  final Function(String?)? onSubmit;
  final VoidCallback? onTap;

  const DefaultTextForm({
    Key? key,
    required this.controller,
    required this.label,
    // required this.prefix,
    this.suffix,
    this.suffixPressed,
    required this.validate,
    required this.type,
    this.isPassword = false,
    this.onSubmit,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      validator: validate,
      keyboardType: type,
      onTap: onTap,
      onFieldSubmitted: onSubmit,
      decoration: InputDecoration(
        hintText: label,
        hintStyle: const TextStyle(
          color: Color(0xff707070),
          fontSize: 15.0,
          fontWeight: FontWeight.bold
        ),
        contentPadding: const EdgeInsets.only(left: 42.0, top: 20.0 ,bottom: 20.0),
        suffixIcon: suffix != null
            ? Padding(
              padding: const EdgeInsets.only(right: 20.0,bottom: 10.0),
              child: IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                    color: const Color(0xff492F24),
                    size: 30.0,
                  ),
                ),
            )
            : null,
        border: InputBorder.none,
        // enabledBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.red,
        //   ),
        // ),

        // const OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.red,
        //   ),
        // ),
        // focusedBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Color(0xFFff823f),
        //     width: 2,
        //   ),
        // ),
        // prefixIcon: Icon(
        //   prefix,
        // ),
        // contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      ),
      // enabled: isClickable,
      // onChanged: onChange,
    );
  }
}
