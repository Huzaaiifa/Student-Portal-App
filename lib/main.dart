import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'TransitionPage.dart';
import 'firebase_options.dart';
import 'temp1.dart';
import 'marks1.dart';
import 'attendence.dart';
import 'second_page.dart';
import 'third_page.dart';
import 'login_page.dart';
import 'Transcript.dart';
import 'transcript1.dart';
import 'package:iftikhars_project/Marks.dart';

void main() async
{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Navigation',
      theme: ThemeData(fontFamily: 'Jost'),
       //home: const TransitionPage(),
        home: attpageWidget (rollNumber: "21L5378")
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String rollNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Second(),
                  ),
                );
              },
              child: const Text('Go to Second Page'),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ThirdPage(),
              ),
              );
            },
                child: const Text('arghhh off we go to the 3rd page vroom')
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MarksPage(),
              ),
              );
            },
                child: const Text('Marks Page')
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  const FirstPageIP(),
              ),
              );
            },
                child: const Text('Login Page')
            )
          ],
        )
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return  SecondPage(rn: '21L-7715',);
  }
}

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return const ThirdPage();
  }
}

class MarksPage extends StatelessWidget {
  const MarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Marks(rollNumber: '21L5378',);
  }
}


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const FirstPageIP();
  }
}


