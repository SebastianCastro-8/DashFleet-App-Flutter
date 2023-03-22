// ignore_for_file: must_be_immutable

import 'package:dashfleet_app_flutter/presentation/pages/home/widgets/header.dart';
import 'package:flutter/material.dart';



class FinanceLayout extends StatefulWidget {
  late GlobalKey<ScaffoldState> scaffolKey;
  FinanceLayout({super.key, required this.scaffolKey});

  @override
  State<FinanceLayout> createState() => _FinanceLayoutState();
}

class _FinanceLayoutState extends State<FinanceLayout> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          HeaderHome(
            scaffolKey: widget.scaffolKey,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              "Dinero",
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
