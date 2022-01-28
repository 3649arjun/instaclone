import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagramclone/colors.dart';
import 'package:instagramclone/resources/auth_data.dart';
import 'package:instagramclone/text-field/text.dart';
import 'colors.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({Key? key}) : super(key: key);

  @override
  _signup_screenState createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  final TextEditingController _emailController  = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController  = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _bioController.dispose();
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
                  SizedBox(height: 10,),
                  Center(
                    child: Text('Sign up to see photos and videos',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,

                    )),
                  ),

                  Center(
                    child: Text('from your friends',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,

                        )),
                  ),
                  SizedBox(height: 20,),
                  //a widget to put a image and can be selected from gallary
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 64,
                        backgroundImage: NetworkImage('data:image/jpeg;base64,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git init'),
                      ),
                      Positioned(
                        bottom: -10,
                          left: 10,
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.add_a_photo),
                          color: blueColor,))
                    ],
                  ),
                  SizedBox(height: 20,),
                  //enter ur username
                  textfield(
                      textInputType: TextInputType.emailAddress,
                      hinttext: 'Enter your username',
                      textEditingController: _usernameController),
                  SizedBox(height: 10,),
                  //text field input for email
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
                  //text field for bio
                  textfield(
                      textInputType: TextInputType.emailAddress,
                      hinttext: 'Enter your bio',
                      textEditingController: _bioController,
                      ),


                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: ElevatedButton(
                          onPressed: (){authmethod().signup(username: _usernameController.text, email: _emailController.text, password: _passwordController.text, bio: _bioController.text);
                          print('it works');},

                          child: Text('Sign up'),

                          style:ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      side: BorderSide(
                                        color: blueColor,
                                        )



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
                        child:Text(" Have an account?"),
                        padding:EdgeInsets.symmetric(vertical: 8),

                      ),
                      Container(
                        child:Text("Log in",
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

