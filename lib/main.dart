import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.pink, //It's primary theme color
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login UI"),
      ),
      backgroundColor: Colors.blue,
      body: Stack(
        fit: StackFit.expand, //expand to cover full body
        children: [
          Image.asset(
            "assets/PP.jpg",
            fit: BoxFit.cover, //Cover the full width
            color: Colors.black87,
            colorBlendMode: BlendMode.darken, //blending the black color to dark
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center, //logo lai center ma
                  child: FlutterLogo(
                    size: 100.0,
                  ),
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
                          obscureText: true, //to show dots in passwords
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          height: 40,
                          minWidth: 100,
                          color: Colors.pink,
                          textColor: Colors.white,
                          splashColor: Colors.green,
                          onPressed: () {
                            // Perform login or form submission here
                          },
                          child: Text("Login"),
                          //you can also add the login icon like this instead of text
                          // child: Icon(Icons.login),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 130,
                ),
                Text(
                  "Designed by: Aaditya Dhakal",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
