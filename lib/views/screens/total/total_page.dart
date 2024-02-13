import 'package:flutter/material.dart';

class TotalPage extends StatefulWidget {
  const TotalPage({super.key});

  @override
  State<TotalPage> createState() => _TotalPageState();
}

class _TotalPageState extends State<TotalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total"),
      ),
    );
  }
}
