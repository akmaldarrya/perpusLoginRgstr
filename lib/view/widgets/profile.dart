import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/utils/global.color.dart';
import 'package:login_signup/view/login.view.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'Akmal Darrya', CupertinoIcons.person),
            const SizedBox(height: 10,),
            itemProfile('Phone', '081319923524', CupertinoIcons.phone),
            const SizedBox(height: 10,),
            itemProfile('Address', 'Depok, Jawa Barat', CupertinoIcons.location),
            const SizedBox(height: 10,),
            itemProfile('Email', 'darryaakmal@gmail.com', CupertinoIcons.mail),
            const SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginView()
                  )
                );
              }, 
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                primary: GlobalCOlors.greenColor
              ),
              child: const Text('Logout')),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
  return  Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: GlobalCOlors.mainColor.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 10
                  )
                ]
              ),
              child: ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
                leading: Icon(iconData),
                tileColor: Colors.white,
              ),
            );
}
}