import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key ? key }) : super(key: key);

  State<SignIn> createState() => MySignIn();

}
class MySignIn extends State<SignIn>
{
  bool remember=false;
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
        appBar: AppBar( backgroundColor: Colors.white,leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),
          onPressed: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          ); },
        )),
        body:Column(
            children: [
              SizedBox(height: 10),
              Image.asset('assets/logo2.jpg',height: 225,width: 225),
              SizedBox(height: 15,),
              Text( "Create new Account", style: TextStyle(color: Colors.pink, fontSize: 25,)),
              SizedBox(height: 25,),
              SizedBox(height:43,width: 350,
                  child: TextField(
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                          prefixIcon:
                          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Email'
                      ))),
              SizedBox(height: 15,),
              SizedBox(height: 43, width: 350,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon:
                    IconButton(onPressed: () {}, icon: Icon(Icons.lock_rounded)),
                    border: OutlineInputBorder(),
                    labelText: 'Set Password',
                    hintText: 'Set Password',

                  ),
                ),),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Checkbox(
                      checkColor: Colors.pink,
                      fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.pink;
                        }
                        return Colors.pink;
                      }),onChanged: (bool? value) { setState(() {
                      remember=value!;
                    }); }, value: remember,),
                    Text('Remember me',style: TextStyle(color: Colors.black, fontSize: 15))]
              ),
              SizedBox(height: 5),
              SizedBox(
                  height:47,
                  width:350,
                  child: ElevatedButton(
                    child: Text('Sign Up',style: TextStyle(color: Colors.white, fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink, elevation: 3,
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30))
                    ), onPressed: () {  }, )),
              SizedBox(height: 30),
              Stack(
                  alignment:Alignment.topCenter,
                  children: const [
                    Divider(color: Colors.grey, //color of divider
                      height: 2, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 35, //spacing at the start of divider
                      endIndent: 248,),
                    Text('or continue with',textAlign: TextAlign.center,),
                    Divider(color: Colors.grey, //color of divider
                        height: 2, //height spacing of divider
                        thickness: 1, //thickness of divier line
                        indent: 260, //spacing at the start of divider
                        endIndent: 35),
                  ]),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox( height:50,  width: 60,
                      child: IconButton(onPressed: () {  }, icon: Icon(Icons.facebook),
                          style: IconButton.styleFrom(
                              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2))
                          )),),
                    SizedBox( height:50, width: 60,
                        child: IconButton(onPressed: () {  }, icon: Icon(Icons.g_mobiledata_sharp) ,
                            style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10))
                            ))),]),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?', style: TextStyle(color: Colors.grey, fontSize: 15)),
                    TextButton(
                        onPressed: () {  },
                        child: Text (' Sign in', style: TextStyle(color: Colors.pink, fontSize: 15))
                    ),
                  ]
              )
            ]));
  }
}
