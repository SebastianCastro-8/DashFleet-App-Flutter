import 'package:flutter/material.dart';

class ListTitleComponent extends StatefulWidget {
  final Function()? onTap;
  final String texto;

  final IconData? icon;
  const ListTitleComponent(
      {super.key,
      required this.texto,
      required this.onTap,
      required this.icon});

  @override
  State<ListTitleComponent> createState() => _ListTitleComponentState();
}

class _ListTitleComponentState extends State<ListTitleComponent> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(
            widget.icon,
            color: Colors.black,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(widget.texto),
        ],
      ),
      onTap: () {
        widget.onTap;
      },
    );
  }
}
