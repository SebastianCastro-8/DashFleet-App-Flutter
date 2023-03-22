// ignore_for_file: must_be_immutable

import 'package:dashfleet_app_flutter/presentation/pages/home/widgets/header.dart';
import 'package:flutter/material.dart';


class HomeLayout extends StatefulWidget {
  late GlobalKey<ScaffoldState> scaffolKey;
  HomeLayout({super.key, required this.scaffolKey});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
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
              "Inicio",
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
