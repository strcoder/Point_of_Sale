import 'package:flutter/material.dart';
import 'package:point_of_sale/widgets/gradient_back.dart';
import 'package:point_of_sale/user/ui/screens/home_page.dart';

class UserLogin extends StatefulWidget {
UserLogin({Key key}) : super(key: key);

@override
_UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {

    final background = Container(
      height: MediaQuery.of(context).size.height / 2 - 100.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Logo.png'),
              fit: BoxFit.contain
          )
      ),
    );

    final loginText = Text(
      'Login',
      style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Color(0xff2D2F37)
      ),
    );

    final singInText = Text(
      'Sign In',
      style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Color(0xff2D2F37)
      ),
    );

    final singUpText = Text(
      'Sign Up',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFFA2A4B1),
          decoration: TextDecoration.underline
      ),
    );

    final forgotText = Text(
      'Forgot Password',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFFA2A3B1),
          decoration: TextDecoration.underline
      ),
    );

    final emailTextField = TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 20.0),
        labelText: 'E-email',
        labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1.5,
            color: Color(0xFFA2A3B1)
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xff3E3FBA),
                width: 3.0
            )
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xFFF9F8FC),
                width: 3.0
            )
        ),
      ),
    );

    final passwordTextField = TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 20.0),
        labelText: 'Password',
        labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1.5,
            color: Color(0xFFA2A3B1)
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xff3E3FBA),
                width: 3.0
            )
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xFFF9F8FC),
                width: 3.0
            )
        ),
      ),
    );

    final singInSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        singInText,
        FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          backgroundColor: Color(0xFF4E4FE1),
          child: Icon(Icons.arrow_forward),
        ),
      ],
    );

    final helpSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        singUpText,
        forgotText,
      ],
    );

    final loginForm = Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          loginText,
          SizedBox(height: 30.0,),
          emailTextField,
          SizedBox(height: 60.0,),
          passwordTextField,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(height: 60.0,),
                singInSection,
                helpSection,
              ],
            ),
          )
        ],
      ),
    );

    final loginFormContainer = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2 + 100.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0)
          )
      ),
      child: loginForm,
    );


    return Scaffold(
        backgroundColor: Color(0xff3E3FBA),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
//                GradientBack('Login'),
                background,
                loginFormContainer
              ],
            )
          ],
        )
    );
  }
}
