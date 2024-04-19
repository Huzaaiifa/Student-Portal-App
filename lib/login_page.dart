import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            color: Color(0xFF000000),
          ),
          margin: EdgeInsets.all((20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child:  Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'roll_nm',
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
              SizedBox(height: 7,),
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

              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  if(_formkey.currentState!.validate()){
                    _formkey.currentState!.save();
                  }

                  signIn(roll_nm, password);
                }, child:Text('Login')),
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


