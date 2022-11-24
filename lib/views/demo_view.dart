import 'package:flutter/material.dart';

class DemoView extends StatefulWidget {
  DemoView({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  State<DemoView> createState() => _DemoViewState();
}

class _DemoViewState extends State<DemoView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text(widget.message),)),
    );
  }
}
