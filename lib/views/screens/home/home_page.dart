import 'package:flutter/material.dart';
import 'package:flutter_pet_journal/views/screens/add/add_page.dart';
import 'package:flutter_pet_journal/views/screens/today/today_grow_page.dart';
import 'package:flutter_pet_journal/views/screens/total/total_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    TodayGrowPage(),
    AddPage(),
    TotalPage(),
  ];

  Widget currentScreen = TodayGrowPage();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                sizeConstraints: BoxConstraints.tightFor(width: 64, height: 64),
                backgroundColor: Colors.transparent,
                elevation: 0)),
        child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {},
            child: ClipOval(
                child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/ic_add.png"),
                          fit: BoxFit.cover),
                    )))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = TodayGrowPage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.group_work,
                            color: currentTab == 0 ? Colors.blue : Colors.grey),
                        Text("오늘의 성장",
                            style: TextStyle(
                                color: currentTab == 0
                                    ? Colors.blue
                                    : Colors.grey))
                      ],
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = TotalPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_month,
                            color: currentTab == 1 ? Colors.blue : Colors.grey),
                        Text("모아보기",
                            style: TextStyle(
                                color: currentTab == 1
                                    ? Colors.blue
                                    : Colors.grey))
                      ],
                    ),
                  )
                ],
              
          ),
        ),
      ),
    );
  }
}
