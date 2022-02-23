import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Signup_Page/signpage_ui.dart';

class Loginhomepage extends StatefulWidget {
  const Loginhomepage({Key? key}) : super(key: key);

  @override
  _LoginhomepageState createState() => _LoginhomepageState();
}

class _LoginhomepageState extends State<Loginhomepage> {
  var _passwordVisible;
  var loggedIn = false;
  TextEditingController UseridCon = TextEditingController();
  TextEditingController PassCon = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Login",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: UseridCon,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xFFe7edeb),
                  hintText: "User-ID",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: PassCon,
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xFFe7edeb),
                  hintText: "Password",
                  suffix: Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                      child: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black, size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            GestureDetector(
              onTap: () {}
              // validateData()
              ,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0.w),
                height: 7.0.h,
                width: 40.0.w,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 17, 17, 17),
                        Color.fromARGB(255, 15, 15, 15)
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.5, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 247, 246, 246),
                    fontSize: 16.0.sp,
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                    onTap: () {
                      Get.to(SignupPage());
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
