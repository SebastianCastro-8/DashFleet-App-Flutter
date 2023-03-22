import 'package:dashfleet_app_flutter/presentation/shared/widgets/constans.dart';
import 'package:flutter/material.dart';

class CheckBoxComponent extends StatefulWidget {
  const CheckBoxComponent({super.key});

  @override
  State<CheckBoxComponent> createState() => _CheckBoxComponentState();
}

class _CheckBoxComponentState extends State<CheckBoxComponent> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value!;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      checkColor: Colors.white,
      activeColor: Constans.ColorPrimario,
    );
  }
}
