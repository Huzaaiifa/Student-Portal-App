import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iftikhars_project/second_page.dart';

import 'auth functons/signUP_IN.dart';

String convertToUpperCase(String input, int n) {
  if (input == null || input.isEmpty) {
    return input;
  }


  n = n.clamp(0, input.length);

  
  String result = input.substring(0, n).toUpperCase() + input.substring(n);
  return result;
}

class FirstPageIP extends StatefulWidget {
  const FirstPageIP({super.key});

  @override
  State<FirstPageIP> createState() => _FirstPageIPState();
}

class _FirstPageIPState extends State<FirstPageIP> {

  final _formkey = GlobalKey<FormState>();
  String roll_nm = ' ';
  String password = ' ';
  String rn = ' ';
  @override



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          width: 412,
          height: 500,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),
            color: Color(0xFF000000),
          ),
          margin: EdgeInsets.all((20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Align(
                alignment: Alignment.centerLeft,
                child:  Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Roll Number',
                      textScaler: TextScaler.linear(2),
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.95)),
                    ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF30312C),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
                ),
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  key:  ValueKey('roll_nm'),
                  decoration: InputDecoration(
                      hintText: "Roll Number i.e (21L1234)"
                  ),
                  validator: (value){
                    if(value == null){return null;}
                    value = value.toString();
                    value = value.toUpperCase();

                    if((value != null) && (value.toString().contains('L') == false)){
                      return 'Incorrect Roll Number format.';
                    }
                  },
                  onSaved: (value){
                    setState(() {
                      if(value == null){return null;}
                      String input = value.toString();
                      int n = 'XXLXXXX'.length;
                      String upperCasePart = convertToUpperCase(input.substring(0, n), n);

                      roll_nm = "$upperCasePart@gmail.com";
                    });
                  },
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child:  Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Password',
                    textScaler: TextScaler.linear(2),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.95)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF30312C),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
                ),
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  obscureText: true,
                  key: ValueKey('Password'),
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
                  validator: (value){
                    if(value != null && value.toString().length < 3){
                      return 'password len small';
                    }
                    else {
                      return null;
                    }
                  },
                  onSaved: (value){
                    setState(() {
                      password = value!;
                    });
                  },
                ),
              ),

              SizedBox(height: 30,),
              Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
//                  color: Color(0XFFE1F197),
                ),
                child: ElevatedButton(onPressed: () async {
                  if(_formkey.currentState!.validate()){
                    _formkey.currentState!.save();
                  }

                  int result = await signIn(roll_nm, password);
                  if(result == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(rn: roll_nm),
                      ),

                    );
                  }
                  else
                    {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("User Not Found"),
                            content: Text("No user found for the provided credentials."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                }, child:Text(
                  'Log In',
                  textScaler: TextScaler.linear(1.3), 
                  style: TextStyle(color: Color.fromRGBO(1, 1, 1, 1), fontWeight: FontWeight.bold),

                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFFE1F197),
                    textStyle: TextStyle()
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

            ],
          ),
        ),
      ),
    );
  }
}


