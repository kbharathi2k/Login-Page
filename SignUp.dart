import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';
class SignUp extends StatefulWidget {
  const SignUp({ Key ? key }) : super(key: key);

  State<SignUp> createState() => MySignUp();

}
class MySignUp extends State<SignUp>
{

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
        appBar: AppBar( backgroundColor: Colors.white,
            leading: IconButton(
                icon: Icon(Icons.arrow_back_rounded,color: Colors.black,), onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => const MyHomePage()),); },),
            title: Text('Complete Your Profile')),
        body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Stack(
                children: [
                  Image.asset('assets/image.jpg',height: 225,width: 225) ,
                   Align(
                      child: IconButton( icon: Icon(Icons.arrow_back_rounded,color: Colors.black,), onPressed: () {}), )
                          ]
                  ),
              SizedBox(height: 10),
              SizedBox(height:43,width: 325,
                  child: TextFormField(decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Full Name', hintText: 'Full Name'))
                      ),
              SizedBox(height: 15,),
              SizedBox(height:43,width: 325,
                  child: TextFormField(decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'MobileNumber', hintText: 'Mobile Number'))
                      ),
            SizedBox(height: 15,),

    ])
    );
  }
}

