// ignore_for_file: must_be_immutable

import 'package:dashfleet_app_flutter/presentation/pages/home/widgets/header.dart';
import 'package:flutter/material.dart';


class ConfigLayout extends StatefulWidget {
  late GlobalKey<ScaffoldState> scaffolKey;
  ConfigLayout({super.key, required this.scaffolKey});

  @override
  State<ConfigLayout> createState() => _ConfigLayoutState();
}

class _ConfigLayoutState extends State<ConfigLayout> {
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
              "Configuraciones",
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
