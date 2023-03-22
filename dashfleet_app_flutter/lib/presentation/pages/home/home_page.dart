// ignore_for_file: non_constant_identifier_names

import 'package:dashfleet_app_flutter/presentation/pages/home/layouts/cartera.dart';
import 'package:dashfleet_app_flutter/presentation/pages/home/layouts/config.dart';
import 'package:dashfleet_app_flutter/presentation/pages/home/layouts/finance.dart';
import 'package:dashfleet_app_flutter/presentation/pages/home/layouts/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../shared/constans.dart';
import 'home_controller.dart';
import 'layouts/add.dart';
import 'widgets/list_title_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(HomeController());
  late PageController _Controller;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var _Index = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    _initPage();
    _Controller = PageController(
      initialPage: _Index,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: drawerMenu(),
      key: scaffoldKey,
      bottomNavigationBar: customBottomNavigationBar(context),
      body: PageView(
        controller: _Controller,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _Index = index;
          });
        },
      ),
    );
  }

  Drawer drawerMenu() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Constans.ColorPrimario,
            ),
            child: const Center(child: Text('Dashfllet Opciones')),
          ),
          ListTitleComponent(
            texto: "Add",
            icon: Icons.add,
            onTap: () {
              _Controller.jumpToPage(0);
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          ListTitleComponent(
            texto: "Home",
            icon: LineIcons.home,
            onTap: () {
              _Controller.jumpToPage(1);
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          ListTitleComponent(
            texto: "Wallet",
            icon: LineIcons.wallet,
            onTap: () {
              _Controller.jumpToPage(2);
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          ListTitleComponent(
            texto: "Money",
            icon: LineIcons.moneyBill,
            onTap: () {
              _Controller.jumpToPage(3);
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          ListTitleComponent(
            texto: "Settings",
            icon: LineIcons.alternatePencil,
            onTap: () {
              _Controller.jumpToPage(4);
              scaffoldKey.currentState!.openDrawer();
            },
          ),
        ],
      ),
    );
  }

  customBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            LineIcons.plus,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineIcons.home,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineIcons.wallet,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineIcons.moneyBill,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineIcons.alternatePencil,
            color: Colors.black,
          ),
          label: '',
        ),
      ],
      currentIndex: _Index,
      onTap: (index) {
        setState(() {
          _Index = index;
        });
        _Controller.jumpToPage(index);
      },
    );
  }

  _initPage() {
    _pages = [
      AddLayout(scaffolKey: scaffoldKey),
      HomeLayout(scaffolKey: scaffoldKey),
      RutasLayout(scaffolKey: scaffoldKey),
      FinanceLayout(scaffolKey: scaffoldKey),
      ConfigLayout(scaffolKey: scaffoldKey)
    ];
  }
}
