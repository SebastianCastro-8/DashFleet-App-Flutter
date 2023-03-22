// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../widgets/header.dart';

class RutasLayout extends StatefulWidget {
  late GlobalKey<ScaffoldState> scaffolKey;
  RutasLayout({super.key, required this.scaffolKey});

  @override
  State<RutasLayout> createState() => _RutasLayoutState();
}

class _RutasLayoutState extends State<RutasLayout> {
  late List<String> listRutas = [
    "Ruta 1",
    "Ruta 2",
    "Ruta 3",
    
  ];

  @override
  void initState() {
    super.initState();
  }

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
              "Rutas",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: listRutas.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // radio de borde de 8.0
                      ),
                      child: ListTile(
                        title: Row(
                          children: [
                            Text(listRutas[i]),
                            Expanded(child: Container()),
                            const Icon(LineIcons.route),
                          ],
                        ),
                        subtitle: Text("${i.toString()} Km"),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
