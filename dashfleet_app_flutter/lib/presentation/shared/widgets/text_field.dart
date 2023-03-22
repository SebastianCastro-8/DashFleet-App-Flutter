// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class TextFieldComponent extends StatefulWidget {
  late TextEditingController controller;
  late bool isPassword;
  late bool numero;
  late String? prefixText;

  TextFieldComponent({
    Key? key,
    required this.controller,
    this.isPassword = false,
    this.numero = false,
    this.prefixText,
  }) : super(key: key);

  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: widget.controller,
            obscureText: widget.isPassword,
            keyboardType: _checkNumber(),
            style: const TextStyle(fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              border: _outlineInputBorder(),
              focusedBorder: _outlineInputBorder(),
              prefixText: widget.prefixText ?? "",
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Color(0xFFE2E2E2)),
    );
  }

  _checkNumber() {
    if (widget.numero) {
      return TextInputType.number;
    }
    return TextInputType.text;
  }
}
