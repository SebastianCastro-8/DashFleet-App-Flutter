// ignore_for_file: must_be_immutable

import 'package:dashfleet_app_flutter/presentation/pages/home/widgets/header.dart';
import 'package:flutter/material.dart';

class AddLayout extends StatefulWidget {
  late GlobalKey<ScaffoldState> scaffolKey;
  AddLayout({Key? key, required this.scaffolKey}) : super(key: key);

  @override
  State<AddLayout> createState() => _AddLayoutState();
}

class _AddLayoutState extends State<AddLayout> {
  

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          HeaderHome(scaffolKey: widget.scaffolKey),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              "Agregar",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
