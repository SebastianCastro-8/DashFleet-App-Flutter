// ignore_for_file: must_be_immutable

import 'package:dashfleet_app_flutter/presentation/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/widgets/constans.dart';

class HeaderHome extends StatefulWidget {
  late GlobalKey <ScaffoldState> scaffolKey;

  HeaderHome({super.key, required this.scaffolKey});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.only(top: 80),
      height: height * 0.25,
      width: width,
      color: Constans.ColorPrimario,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            child: Image.network(
                "https://w7.pngwing.com/pngs/741/68/png-transparent-user-computer-icons-user-miscellaneous-cdr-rectangle-thumbnail.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Lorem Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              Text(
                "Loren Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: IconButton(
              onPressed: () {
                widget.scaffolKey.currentState!.openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
