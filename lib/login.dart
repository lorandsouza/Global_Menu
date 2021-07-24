import 'dart:ui';
import 'appContainer.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:global_menu/constants.dart';
import 'package:google_fonts/google_fonts.dart';




class Login extends StatefulWidget {
  static const String id='login_screen';
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) => LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.black,Colors.transparent]
    ).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Center(

                    child: Text('Global Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
              ),
              Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: BoxLogin(
                      textInput: 'Email',
                      icon: FontAwesomeIcons.envelope,
                      text: TextInputType.emailAddress,
                      action: TextInputAction.next,
                      passwd: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: BoxLogin(
                      textInput: 'Password',
                      icon: FontAwesomeIcons.lock,
                      text: TextInputType.name,
                      action: TextInputAction.done,
                      passwd: true,
                    ),
                  ),
                  Text('Forgot Password?',
                      style: kBodyText.copyWith(color: Colors.white)
                  ),
                  SizedBox(
                    height: 30,
                  ),

    Container(
    height: 70.0,
    width: 400.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50.0),
    color: Color(0xFFEF3D00),
    ),
    child: TextButton(
    onPressed: (){
      Navigator.pushNamed(context, 'app_screen');
    },
    child: Text('Login',
    style: GoogleFonts.roboto().copyWith(fontSize: 25.0,
    color: Colors.white,fontWeight: FontWeight.w600),

    ),
    ),
    ),


                  SizedBox(height: 100.0,)

                ],
              ),
            ],
          ),
        )

      ],
    );
  }
}


class BoxLogin extends StatelessWidget {

  BoxLogin({this.icon,this.textInput,this.text,this.action,this.passwd});

 final IconData icon;
 final String textInput;
 final TextInputType text;
 final TextInputAction action;
 final bool passwd;




  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(icon,
                size: 30.0,
                color: Colors.black
                  ),
              ),
              border: InputBorder.none,
              hintText: textInput,
              hintStyle: kBodyText,
            ),
            obscureText: passwd,
            style: kBodyText,
            keyboardType: text,
            textInputAction: action,
          ),
        ),
      ),
    );
  }
}
