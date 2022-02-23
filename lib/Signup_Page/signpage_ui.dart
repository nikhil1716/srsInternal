import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController fullName = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController UseridController = TextEditingController();
  var _passwordVisible;
  var loggedIn = false;
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Text(
                "SignUp",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextField(
                controller: fullName,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xFFe7edeb),
                  hintText: "Enter The Full Name",
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xFFe7edeb),
                  hintText: "E-mail",
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextField(
                controller: mobileController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xFFe7edeb),
                  hintText: "Phone Number",
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextField(
                controller: addressController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xFFe7edeb),
                  hintText: "Address",
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextField(
                controller: UseridController,
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
              SizedBox(
                height: 5.h,
              ),
              TextField(
                controller: passwordController,
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
            ],
          ),
        ),
      )),
    );
  }
}
