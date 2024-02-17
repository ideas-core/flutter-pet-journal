import 'package:flutter/material.dart';

import '../../../utils/common_color.dart';

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
        title: const Text("토탈 뷰", style: TextStyle(
          color: Color(black21),
              fontSize: 21,
          fontFamily: "NotoSans",
          fontWeight: FontWeight.w700
        )),
      ),
    );
  }
}
