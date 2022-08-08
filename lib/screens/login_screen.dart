// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(67),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
              ]),
          height: 40,
          width: 240,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Blinker-SemiBold.ttf',
                fontSize: 12),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 10.0,
                ),
                prefixIcon: Icon(Icons.person, size: 18),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black26)),
          ),
        ),
      ],
    );
  }

  Widget _buidPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(67),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
              ]),
          height: 40,
          width: 240,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Blinker-SemiBold.ttf',
                fontSize: 12),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 10.0,
                ),
                prefixIcon: Icon(Icons.lock, size: 18),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black26)),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPassword() {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        // ignore: avoid_print
        onPressed: () => print('Forgot Password Button Pressed'),
        child: const Text(
          'Forgot your password ?',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Blinker-SemiBold.ttf',
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }

  Widget _buildLogin() {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 240,
      child: RaisedButton(
        elevation: 5,
        // ignore: avoid_print
        onPressed: () => print('Login Pressed'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        color: Colors.deepPurple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.deepPurple,
            ),
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Blinker-SemiBold.ttf',
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSigninWith() {
    return Column(
      children: const <Widget>[
        Text(
          'or connect with',
          style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Blinker-SemiBold.ttf',
              fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildFacebookLogin() {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 35,
      width: 130,
      child: RaisedButton(
        elevation: 5,
        // ignore: avoid_print
        onPressed: () => print('Login With FaceBook Button Pressed'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              color: Colors.blue,
            ),
            Image.asset('assets/images/facebook.png'),
            const Text(
              'Facebook',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Blinker-SemiBold.ttf',
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTwitterLogin() {
    return Container(
      alignment: Alignment.bottomRight,
      height: 35,
      width: 130,
      child: RaisedButton(
        elevation: 5,
        // ignore: avoid_print
        onPressed: () => print('Login With Twitter Button Pressed'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        color: const Color.fromARGB(255, 12, 3, 108),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              color: const Color.fromARGB(255, 72, 46, 198),
            ),
            Image.asset('assets/images/twitter.png'),
            const Text(
              'Twitter',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Blinker-SemiBold.ttf',
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignUp() {
    return GestureDetector(
      // ignore: avoid_print
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account ? ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontFamily: 'Blinker-SemiBold.ttf',
              ),
            ),
            TextSpan(
              text: 'Sign Up ',
              style: TextStyle(
                color: Color.fromARGB(255, 26, 37, 190),
                fontSize: 12,
                fontFamily: 'Blinker-SemiBold.ttf',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 512,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    bottom: 0,
                    child: Image.asset('assets/images/vector2.png'),
                  ),
                  Positioned(
                    top: 0,
                    child: Image.asset('assets/images/vector1.png'),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              height: double.infinity,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 120.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Blinker-SemiBold.ttf',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 37),
                    _buildEmail(),
                    const SizedBox(height: 18),
                    _buidPassword(),
                    const SizedBox(height: 48),
                    _buildLogin(),
                    const SizedBox(height: 24),
                    _buildForgotPassword(),
                    const SizedBox(height: 183),
                    _buildSigninWith(),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _buildFacebookLogin(),
                        _buildTwitterLogin(),
                      ],
                    ),
                    const SizedBox(height: 50),
                    _buildSignUp(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
