import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagramclone/colors.dart';
import 'package:instagramclone/text-field/text.dart';
import 'colors.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final TextEditingController _emailController  = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical:12),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(),flex: 2,),
              //svg image
              SvgPicture.asset('assets/ic_instagram.svg',color: primaryColor,height: 64,),
              //text field input for username
              textfield(
                  textInputType: TextInputType.emailAddress,
                  hinttext: 'Enter your Email',
                  textEditingController: _emailController),
              SizedBox(height: 10,),

              //text field input for password
                  textfield(
                  textInputType: TextInputType.emailAddress,
                  hinttext: 'Enter your password',
                  textEditingController: _passwordController,
                    isPass:true),
                SizedBox(height: 12,),

                   Container(
                     width: double.infinity,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),

                       child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Log In '),

                  style:ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                              side: BorderSide(
                                color: blueColor,
                                width: double.infinity,)



                  ) ) )

              //login button
              //text for sign up
                  ),
                     ),
                   ),
              SizedBox(height: 15,),
              Flexible(child: Container(),flex: 2,),
              //dont have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child:Text("Don't have an account?"),
                    padding:EdgeInsets.symmetric(vertical: 8),

    ),
                  Container(
                    child:Text("Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blueColor,
                    ),),
                    padding:EdgeInsets.symmetric(vertical: 8),

                  ),],

              ),
                 ],
          ),

      )
      ) );
  }
}

