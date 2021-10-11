import 'package:app/screens/dummy_screen.dart';
import 'package:app/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 100.0),
                child: SvgPicture.asset('images/logo.svg'),
              ),
              const Positioned(
                bottom: 50,
                child: LoginButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  GoogleSignIn _googleSignIn = GoogleSignIn();
  late FirebaseAuth _auth;
  bool isUserSignedIn = false;

  @override
  void initState() {
    super.initState();
    initApp();
  }

  void initApp() async {
    FirebaseApp defaultApp = await Firebase.initializeApp();
    _auth = FirebaseAuth.instanceFor(app: defaultApp);
  }

  @override
  Widget build(BuildContext context) {
    Future<User> _handleSignIn() async {
      // hold the instance of the authenticated user
      User user;
      bool userSignedIn;
      // flag to check whether we're signed in already
      bool isSignedIn = await _googleSignIn.isSignedIn();
      setState(() {
        isUserSignedIn = isSignedIn;
      });
      if (isSignedIn) {
        // if so, return the current user
        user = _auth.currentUser!;
      } else {
        final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
        final GoogleSignInAuthentication googleAuth =
            await googleUser!.authentication;
        // get the credentials to (access / id token)
        // to sign in via Firebase Authentication
        final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
        user = (await _auth.signInWithCredential(credential)).user!;
        userSignedIn = await _googleSignIn.isSignedIn();
        setState(() {
          isUserSignedIn = userSignedIn;
        });
      }

      return user;
    }

    void loginWithGoogle() async {
      User user = await _handleSignIn();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DummyScreen(),
        ),
      );
      // setState(() {
      //   isUserSignedIn = userSignedIn == null ? true : false;
      // });
    }

    return Material(
      color: appAccentColor,
      borderRadius: BorderRadius.circular(7.0),
      child: InkWell(
        onTap: loginWithGoogle,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          width: MediaQuery.of(context).size.width - 100,
          child: const Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: appPrimaryColor,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
