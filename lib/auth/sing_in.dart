import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screen/homescreen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  // ignore: unused_element
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {
      if (kDebugMode) {
        print(e.message);
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            // color: Colors.red,
            child: Column(
              children: [
                const Text('Sing In to Continue'),
                const Text(
                  'Food Go',
                  style: TextStyle(fontSize: 70, color: Colors.white, shadows: [
                    BoxShadow(
                        blurRadius: 30,
                        color: Colors.green,
                        offset: Offset(3, 3))
                  ]),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SignInButton(
                      Buttons.apple,
                      text: "Sign in with Apple",
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.google,
                      text: "Sign in with Google",
                      onPressed: () {
                        // ignore: avoid_types_as_parameter_names, non_constant_identifier_names, use_build_context_synchronously
                        _googleSignUp().then(
                            // ignore: use_build_context_synchronously
                            (value) => Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const Homescreen()),
                                ));
                      },
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Text(
                      'Commet to good food',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'term privecy and policy',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

extension on Object {
  Object? get message => null;
}
