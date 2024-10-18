import 'package:elt_machine_task/presentation/home/widgets/homewidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final  List<Widget> screens=[
  const HomeView(),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //Appbar
        appBar:AppBar(
          title: const Text('App name',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
        ) ,

        //Body
        body: HomeView(),
      
        //Botttom navigation bar
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Authors')
        ]),
      ),
    );
  }
}