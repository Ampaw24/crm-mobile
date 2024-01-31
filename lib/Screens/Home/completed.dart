// ignore_for_file: avoid_unnecessary_containers

import "package:flutter/material.dart";

class Complete extends StatefulWidget {
  const Complete({super.key});

  @override
  State<Complete> createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("data"),
        )
      ],
    );
  }
}
