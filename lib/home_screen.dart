import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScrenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              "menu clicked";
            },
            icon: Icon(Icons.menu)),
        title: Text("DODJE"),
        actions: [
          IconButton(
              onPressed: () {
                print("access time");
              },
              icon: Icon(Icons.access_alarm)),
        ],
        centerTitle: true,
        backgroundColor: Color(0xFF000000),
        elevation: 40,
      ),
      body: Column(
        children: [
          Container(
            width: 75,
            child: Stack(
              children: [
                Image(
                  image: NetworkImage(
                      "data:image/jpeg;base64,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"),
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: Text(
                    "CAt",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
