import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Aesthisi extends StatelessWidget {
  const Aesthisi({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 30, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 9.0,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 11,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                            "https://i.ibb.co/zx58XpH/download-1-1.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Leonardo Da Vinci, Mona Lisa, 1503–19",
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.5, 3.5),
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 86, 81, 81),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 9.0,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjvWnVeFkCdEG5WYgEYJE8WIJ81TzqaUoBpA&usqp=CAU'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 11,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                            "https://i.ibb.co/9pYzJC8/download-2.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Johannes Vermeer, Girl with a Pearl Earring, 1665",
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.5, 3.5),
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 86, 81, 81),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 9.0,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 11,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                            "https://i.ibb.co/nRwFKXB/download-3-1.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Vincent van Gogh, The Starry Night, 1889",
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.5, 3.5),
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 86, 81, 81),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 9.0,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Diego_Vel%C3%A1zquez_Autorretrato_45_x_38_cm_-_Colecci%C3%B3n_Real_Academia_de_Bellas_Artes_de_San_Carlos_-_Museo_de_Bellas_Artes_de_Valencia.jpg/330px-Diego_Vel%C3%A1zquez_Autorretrato_45_x_38_cm_-_Colecci%C3%B3n_Real_Academia_de_Bellas_Artes_de_San_Carlos_-_Museo_de_Bellas_Artes_de_Valencia.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 11,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                            "https://i.ibb.co/82CKhvF/download-5-1.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Diego Rodríguez de Silva y Velázquez, Las Meninas",
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.5, 3.5),
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 86, 81, 81),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 9.0,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 11,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                            "https://i.ibb.co/CVJHMgd/download-6-1.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Claude Monet, Impression, Sunrise, 1874",
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.5, 3.5),
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 86, 81, 81),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 9.0,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 11,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                            "https://i.ibb.co/d0YRLrg/download-7-1.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Caspar David Friedrich, Wanderer above the Sea of Fog, 1819",
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.5, 3.5),
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 86, 81, 81),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 9.0,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 11,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                            "https://i.ibb.co/cNPtrnX/download-8-2.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Théodore Géricault, The Raft of the Medusa, 1818–1819",
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.5, 3.5),
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 86, 81, 81),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 9.0,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 11,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                            "https://i.ibb.co/0Q2GfSk/download-11-1.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Edward Hopper, Nighthawks, 1942",
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.5, 3.5),
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 86, 81, 81),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 9.0,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(3.5, 3.5),
                            blurRadius: 11,
                            color: Color.fromARGB(255, 86, 81, 81),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                            "https://i.ibb.co/x5tJhCS/download-12-1.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Rene Magritte, The Son Of Man, 1946",
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.5, 3.5),
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 86, 81, 81),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
              ]),
        ),
      ),
    );
  }
}
