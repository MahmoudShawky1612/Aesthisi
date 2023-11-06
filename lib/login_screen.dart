import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Aesthisi.dart';
import 'hover_button.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 102, 188, 231),
        elevation: 0,
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.getFont(
                    'Pacifico', // Replace with the name of the Google Font you want to use
                    textStyle: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
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
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(155, 155, 155, 1),
                      ),
                    ),
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(155, 155, 155, 1),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(155, 155, 155, 1),
                      ),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.password,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: HoverButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Aesthisi()));
                    },
                    child: Text(
                      "Login",
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don\'t have an account?  ",
                    ),
                    HoverButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
