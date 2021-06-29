import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payunitinterface/components/PayUnitButton.dart';
import 'package:payunitinterface/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Spacer(flex: 1),
              Image(
                image: AssetImage('assets/images/PayUnit.png'),
              ),
              SizedBox(
                height: screenHeight(context) / 10,
              ),
              // Spacer(flex: 1),
              Text(
                "Sign in to PayUnit",
                style: ksubtitle,
              ),
              SizedBox(
                height: screenHeight(context) / 20,
              ),
              Padding(
                padding: kmainpadding,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(20.0),
                    labelStyle: TextStyle(fontSize: 13.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: kmainpadding,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(20.0),
                    labelStyle: TextStyle(fontSize: 13.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    hintText: "Password",
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight(context) / 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot password?",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.open_in_new,
                      color: kprimaryColor,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              // PayUnitButton(text: "Login", action: () {}),
              PayUnitButton(text: 'text', action: () {}),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't yet have an account?",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Text(
                    'Signup',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: kprimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              // SvgPicture.asset('assets/images/PayUnitlogo.svg'),
            ],
          ),
          Positioned(
            child: SvgPicture.asset('assets/images/Ellipse.svg'),
            top: 0,
            right: 0,
          ),
          Positioned(
            child: SvgPicture.asset('assets/images/Vector.svg'),
            bottom: 20,
            left: 0,
          ),
        ],
      ),
    );
  }
}

// class PayUnitButton extends StatelessWidget {
//   const PayUnitButton({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         height: screenHeight(context) / 12,
//         width: screenWidth(context),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: kprimaryColor),
//         child: Center(
//             child: Text(
//           'Login',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18.0,
//             fontWeight: FontWeight.w600,
//           ),
//         )),
//       ),
//     );
//   }
// }
