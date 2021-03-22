import 'package:flutter/material.dart';
import 'package:pdf_translator/components/Rounded_Button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            colors: [Colors.green, Color(0xff03fcc2)],
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
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Text('SignUp',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
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
                                  return 'E-mail cannot be empty!';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(hintText: 'E-mail'),
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
                          RoundedButton(
                            title: 'SignUp',
                            colour: Color(0xff27cf8b),
                            fontSize: 25,
                            onPressed: () {
                              // Navigator.pushNamed(context, 'Sign_up');
                            },
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
