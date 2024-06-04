import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login_signup/utils/global.color.dart';
import 'package:login_signup/view/login.view.dart';
import 'package:login_signup/view/widgets/button.regist.dart';
import 'package:login_signup/view/widgets/text.form.global.dart';

class registerView extends StatelessWidget {
  registerView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                 alignment: Alignment.center, 
                 child: Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/logo.png'),
                  width: 150,
                  height: 150,
                 ),
                ),
                const SizedBox(height: 0),
                Align(
                alignment: Alignment.centerLeft,
                child:
                Text('Register your account',
                style: TextStyle(
                  color: GlobalCOlors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                ),
                ),
                const SizedBox(height: 15),

                //// Username
                
                TextFormGlobal(
                  controller: usernameController,
                  text: 'Username',
                  obscure: false,
                  textInputType: TextInputType.name,
                ),

                const SizedBox(height: 10),

                //// Email
                
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 10),

                //// Password
                
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  obscure: true,
                  textInputType: TextInputType.text,
                ),

                const SizedBox(height: 10),

                //// Confirm password
                
                TextFormGlobal(
                  controller: confirmController,
                  text: 'Confirm password',
                  obscure: true,
                  textInputType: TextInputType.text,
                ),

                const SizedBox(height: 10),
                const buttonRegist(),
                const SizedBox(height: 25)
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
            Text('Have account? '),
            InkWell(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => loginView()
                )
                );
              },
              child: Text('Login',
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