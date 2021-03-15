import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.pink],
            begin: Alignment.topLeft,
            stops: [0.01, 1],
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Login',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Welcome Back',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            SizedBox(height: 60),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                      topRight: Radius.circular(80)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 60),
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10,
                                  offset: Offset(0, 10),
                                )
                              ],
                            ),
                            child: TextFormField(
                              controller: controller1,
                              scrollPhysics: ScrollPhysics(),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'UserName cannot be empty!';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(hintText: 'UserId'),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10,
                                  offset: Offset(0, 10),
                                )
                              ],
                            ),
                            child: TextFormField(
                              controller: controller2,
                              scrollPhysics: ScrollPhysics(),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'PassWord cannot be empty!';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(hintText: 'Password'),
                            ),
                          ),
                          SizedBox(height: 30),
                          Text('Forgot Password',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.red)),
                          SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                    child: Text('Login',
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.red)))),
                          ),
                        ],
                      ),
                    ),
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
