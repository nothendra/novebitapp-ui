import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(213, 201, 201, 201),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/assets/img/blurred-dark.png'), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    "Welcome back! Enter your account information.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 235, 235),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(35),
                  child: Column(
                    // ----------- MAIN COLUMN ------------
                    children: <Widget>[
                      SizedBox(height: 45),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(54, 0, 0, 0),
                            blurRadius: 20,
                            offset: Offset(0, 20),
                          )
                        ]),

                        // ----------- TEXTFIELD CLUSTER COLUMN ------------
                        child: Column(
                          children: <Widget>[
                            // ----- EMAIL FIELD -----
                            Container(
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            // ----- PASSWORD FIELD -----
                            Container(
                              decoration: BoxDecoration(),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Color.fromARGB(173, 51, 51, 51),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),

                      // ----- LOGIN BUTTON -----
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/dashboard'),
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 35),
                          decoration: BoxDecoration(
                            color: Color(0xFF7db3e9),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "Login!",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        "Login through social media",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Color.fromARGB(173, 51, 51, 51),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),

                      // ----- ALTERNATIVE LOGIN CLUSTER -----
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 115, 73),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text("Google",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                    )),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 0, 34, 107),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text("Steam",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 45,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            color: Color.fromARGB(173, 51, 51, 51)
                          ),
                          children: [
                            TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.w900,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, '/register');}
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
