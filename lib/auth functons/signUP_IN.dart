import 'package:firebase_auth/firebase_auth.dart';


signUp(String email, String password) async{
  try {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    print("successsful signup!!!!");
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}




Future<int> signIn(String email, String password) async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    email = email.toUpperCase().trim();

    print('$email in signin auth ');

    if (email.length >= 3) {
      if (email[2] == 'L') {
        return 1;
      }
      else if (email[2] == 'T'){
        return 2;
      }
      else{
        return -1;
      }
    }
    else{
      return -1;
    }

    //print("Successful sign-in");
     // Return 1 for successful login
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
      return 0; // Return 0 for user not found
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
      return -1; // Return -1 for wrong password
    } else {
      // Handle other authentication errors
      print('Error: ${e.code}');
      return -2; // Return -2 for other errors
    }
  } catch (e) {
    // Handle other exceptions
    print('Error: $e');
    return -3; // Return -3 for other exceptions
  }
}