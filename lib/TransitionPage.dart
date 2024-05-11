import 'dart:async';
import 'dart:ui'; // Import dart:ui for ImageFilter
import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart'; // Import AudioCache
import 'login_page.dart';

class TransitionPage extends StatefulWidget {
  const TransitionPage({Key? key}) : super(key: key);

  @override
  _TransitionPageState createState() => _TransitionPageState();
}

class _TransitionPageState extends State<TransitionPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _blurAnimation;
  bool _imageVisible = false;

 // final AudioCache _audioCache = AudioCache(); // Initialize AudioCache

  @override
  void initState() {
    super.initState();
    // Delay the initialization by 1 second
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _controller = AnimationController(
          vsync: this,
          duration: const Duration(seconds: 2), // Duration of the entire animation
        );

        _blurAnimation = Tween<double>(
          begin: 0.0,
          end: 10.0, // Maximum blur value
        ).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeInOut, // Animation curve
          ),
        );

        _controller.forward().whenComplete(() {
          // Navigate to LoginPage after animation completes
          Timer(const Duration(seconds: 3), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const FirstPageIP()),
            );
          });
        });

        _imageVisible = true;

       // _audioCache.load('pop_sound.mp3'); // Load the sound file
       // _audioCache.play('pop_sound.mp3'); // Play the pop sound
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedOpacity(
          opacity: _imageVisible ? 1.0 : 0.0, // Show image when _imageVisible is true
          duration: Duration(milliseconds: 500), // Fade in/out duration
          child: _imageVisible
              ? Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300, // Increase width
                height: 300, // Increase height
                decoration: BoxDecoration(
                  color: Colors.transparent, // Transparent background
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: _blurAnimation.value,
                      sigmaY: _blurAnimation.value,
                    ),
                    child: Image.asset(
                      'web/assets/fl.png', // Change to your logo file name
                      width: 300, // Adjust image width
                      height: 300, // Adjust image height
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          )
              : SizedBox(), // Placeholder when image is not yet visible
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
