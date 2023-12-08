import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeeScreen/Homee.dart';
import 'package:flutter_application_1/LikesScreen/Likes.dart';
import 'package:flutter_application_1/ProfileScreen/Profile.dart';
import 'package:flutter_application_1/SearchScreen/Search.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



class Aesthisi extends StatefulWidget {

  @override
  State<Aesthisi> createState() => _AesthisiState();
}

class _AesthisiState extends State<Aesthisi> {
  int currentIndex=0;

  List<Widget> screens=[
    Homee(),
    Likes(),
    Search(),
    Profile(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
          //color: Colors.blue,
          child: Text(
            "Aesthisi ",
            style: GoogleFonts.getFont(
              'Pacifico',
              textStyle: TextStyle(
                fontSize: 45,
                color: Color.fromRGBO(230, 255, 255, 1),
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(3.5, 3.5),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 16, 125, 179),
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://i.ibb.co/4TWvCjx/IMG20230425064152.jpg"),
            ),
          ),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

        child: ClipRRect(

          borderRadius: BorderRadius.circular(20),
          child: GNav(
              gap: 7,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.black,
              tabBorderRadius: 20,
              tabBackgroundColor: Color.fromARGB(255, 131, 97, 85),
              padding: EdgeInsets.all(16),
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
              tabs: [

                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: "Likes",
                ),
                GButton(
                  icon: Icons.search,
                  text: "Search",
                ),
                GButton(
                  icon: Icons.person,
                  text: "Mahmoud Shawky",
                ),
              ],


          ),

        ),
      ),

    );
  }


}
