import 'dart:ffi';

import 'package:flutter/material.dart';


class Screens extends StatefulWidget{
  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {

  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Container(),
    Container(),
    Container(),
    Container(),
  ]; 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              tabs:[
                GButton(icon: LineIcons.home, text: 'Home',),
                GButton(icon: LineIcons.home, text: 'Home',),
                GButton(icon: LineIcons.home, text: 'Home',),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index){
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
