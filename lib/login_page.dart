import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:iftikhars_project/second_page.dart';
import 'main.dart';
import 'auth functons/signUP_IN.dart';

String convertToUpperCase(String input, int n) {
  if (input.isEmpty) {
    return input;
  }
  n = n.clamp(0, input.length);

  String result = input.substring(0, n).toUpperCase() + input.substring(n);
  return result;
}

class FirstPageIP extends StatefulWidget {
  const FirstPageIP({super.key});
=======
import 'package:iftikhars_project/auth functons/signUP_IN.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
>>>>>>> Stashed changes

  @override
  _LoginPageState createState() => _LoginPageState();
}

<<<<<<< Updated upstream
class _FirstPageIPState extends State<FirstPageIP> {
  final _formkey = GlobalKey<FormState>();
  String roll_nm = ' ';
  String password = ' ';
  String rn = ' ';
=======
class _LoginPageState extends State<LoginPage> {
  final rollNumberController = TextEditingController();
  final passwordController = TextEditingController();

>>>>>>> Stashed changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7EBD0),
<<<<<<< Updated upstream
      body: Form(
        key: _formkey,
        child: Center(
          child: Container(
            width: 412,
            height: 500,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Color(0xFF000000),
            ),
            margin: const EdgeInsets.all((20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(
                //   height: 10,
                // ),
                Text(
                  'Sign In', // Title text
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: const Text(
                      'Roll Number',
                      textScaler: TextScaler.linear(1.5),
                      style:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 0.95)),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF30312C),
                    borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    key: const ValueKey('roll_nm'),
                    decoration: const InputDecoration(
                        hintText: "Roll Number i.e (21L1234)"),
                    validator: (value) {
                      if (value == null) {
                        return null;
                      }
                      value = value.toString();
                      value = value.toUpperCase();

                      if ((value != null) &&
                          (value.toString().contains('L') == false)) {
                        return 'Incorrect Roll Number format.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        if (value == null) {
                          return;
                        }
                        String input = value.toString();
                        int n = 'XXLXXXX'.length;
                        String upperCasePart =
                            convertToUpperCase(input.substring(0, n), n);

                        roll_nm = "$upperCasePart@gmail.com";
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: const Text(
                      'Password',
                      textScaler: TextScaler.linear(1.5),
                      style:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 0.95)),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF30312C),
                    borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: true,
                    key: const ValueKey('Password'),
                    decoration: const InputDecoration(hintText: "Password"),
                    validator: (value) {
                      if (value != null && value.toString().length < 3) {
                        return 'password len small';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        password = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 120,
                  height: 50,
                  decoration: const BoxDecoration(
//                  color: Color(0XFFE1F197),
                      ),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                      }

                      int result = await signIn(roll_nm, password);
                      if (result == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(rn: roll_nm),
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("User Not Found"),
                              content: const Text(
                                  "No user found for the provided credentials."),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFFE1F197),
                        textStyle: const TextStyle()),
                    child: const Text(
                      'Log In',
                      textScaler: TextScaler.linear(1.3),
                      style: TextStyle(
                          color: Color.fromRGBO(1, 1, 1, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
=======
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: rollNumberController,
                      decoration: InputDecoration(
                        hintText: 'Roll Number i.e (L215378)',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle login button press
                        String email =
                            rollNumberController.toString() + "@gmail.com";
                        signIn(email, passwordController.toString());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFE1F197),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 16.0),
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Add the image here
          ],
>>>>>>> Stashed changes
        ),
      ),
    );
  }
}
