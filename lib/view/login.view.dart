import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login_signup/utils/global.color.dart';
import 'package:login_signup/view/register.view.dart';
import 'package:login_signup/view/widgets/button.global.dart';
import 'package:login_signup/view/widgets/text.form.global.dart';

class loginView extends StatelessWidget {
  loginView({ Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),  
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logo.png'),
                    width: 150,
                    height: 150,
                  )
                ),
                const SizedBox(height: 0),
                  Text(
                  'login to your account',
                  style: TextStyle(
                    color: GlobalCOlors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  const SizedBox(height: 15),

                  //// Email Input
                  
                  TextFormGlobal(
                    controller: emailController,
                    text: 'Email',  
                    obscure: false,
                    textInputType: TextInputType.emailAddress,
                    ),

                    const SizedBox(height: 10),

                    //// Password Input
                  TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                  ),

                  const SizedBox(height: 10),
                  const ButtonGlobal(),     
                  const SizedBox(height: 25),
                ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account? '),
            InkWell(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => registerView()
                  )
                );
              },
              child: Text('Register',
              style: TextStyle(
                color: GlobalCOlors.mainColor
              ),),
            ),
          ],
        ),
      ),
    );
  }
}