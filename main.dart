import 'package:flutter/material.dart';
import 'package:untitled1/SignIn.dart';
import 'SignUp.dart';
void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SignUp',
      home: MyHomePage()
    );
  }
}
  class MyHomePage extends StatefulWidget {
    const MyHomePage({ Key ? key }) : super(key: key);

    State<MyHomePage> createState() => MyHomePageState();
  }
   class MyHomePageState extends State<MyHomePage>
   {
     @override
     Widget build(BuildContext context)
     {
       return Scaffold(
           appBar: AppBar( backgroundColor: Colors.white,leading: IconButton(
         icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),
         onPressed: () {Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => SignUp()),
         ); },
       )),
           body:Column(
               children: [
                    Image.asset('assets/logo.jpg',height: 225,width: 225),
                    SizedBox(height: 15,),
                    Text( "Let's Get Started", style: TextStyle(color: Colors.pink, fontSize: 25,)),
                    SizedBox(height: 25,),
                    SizedBox(
                        height:47,
                        width: 325,
                        child: OutlinedButton.icon(icon: Icon(Icons.facebook),label: Text('SignUp using Facebook',style: TextStyle(color: Colors.black, fontSize: 13)),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10))
                            ), onPressed: () {  },)
                    ),
                 SizedBox(height: 15,),
                 SizedBox(
                     height:47,
                     width: 325,
                     child: OutlinedButton.icon(icon: Icon(Icons.g_mobiledata_sharp),label: Text('SignUp using Google',style: TextStyle(color: Colors.black, fontSize: 13)),
                       style: OutlinedButton.styleFrom(
                           shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10))
                       ), onPressed: () {  },)
                 ),
                 SizedBox(height: 80,),
                    Stack(
                        alignment:Alignment.topCenter,
                        children: const [
                                 Divider(color: Colors.grey, //color of divider
                                   height: 2, //height spacing of divider
                                   thickness: 1, //thickness of divier line
                                   indent: 35, //spacing at the start of divider
                                   endIndent: 254,),
                                  Text('or',textAlign: TextAlign.center,),
                        Divider(color: Colors.grey, //color of divider
                          height: 2, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent: 256, //spacing at the start of divider
                          endIndent: 35),
                      ]),
                 SizedBox(height: 80),
                 SizedBox(
                     height:47,
                     width:325,
                     child: ElevatedButton(
                       child: Text('SignIn using Password',style: TextStyle(color: Colors.white, fontSize: 20)),
                        style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.pink, elevation: 3,
                         shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30))
                     ), onPressed: () { Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const SignIn()),
                     ); }, )),
                 Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('New User?', style: TextStyle(color: Colors.grey, fontSize: 15)),
                        TextButton(
                          onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUp()),
                          ); },
                          child: Text (' Sign up', style: TextStyle(color: Colors.pink, fontSize: 15))
                        ),
                         ]
                    )
                                    ]));
     }
   }

