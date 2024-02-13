import 'package:flutter/material.dart';

class TodayGrowPage extends StatefulWidget {
  const TodayGrowPage({super.key});
  @override
  State<TodayGrowPage> createState() => _TodayGrowPageState();
}

class _TodayGrowPageState extends State<TodayGrowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodayGrow"),
      ),
    );
  }
}
