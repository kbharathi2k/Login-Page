import 'package:flutter/material.dart';

class GoogleForm extends StatefulWidget {

  const GoogleForm({ Key ? key }) : super(key: key);

  @override
  State<GoogleForm> createState() => MyGoogleForm();
}
class MyGoogleForm extends State<GoogleForm>
{
  String val='type';
  String valu='currency';
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container( color: Colors.grey.shade700,
              child:Column(
                  children:[
                    const SizedBox(height: 30,),
                    Container(margin: const EdgeInsetsDirectional.all(20),decoration: const BoxDecoration(color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                      child:SizedBox(height: 200,
                          child: Card( margin: const EdgeInsetsDirectional.only(top: 20),color: Colors.lightGreen,shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),elevation: 5,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text('January OTC',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),textAlign: TextAlign.left,),
                                    Text('2023',textAlign: TextAlign.left,),
                                    Divider(color: Colors.black,),
                                  ]
                              )
                          )) ,
                    ),
                    Card(
                      margin: const EdgeInsets.all(15), elevation: 5, color: Colors.lightGreen,shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const SizedBox(height: 5),
                          const Text('Trade Type',textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16)),
                          ListTile(
                            title: const Text('Buy'),
                            leading: Radio(value: 'buy',groupValue: val,onChanged: (value)
                            {
                              setState(() {
                                val = value as String;
                              });
                            },
                              activeColor: Colors.black,
                            ),
                          ),
                          ListTile(
                            title: const Text('Sell'),
                            leading: Radio(value: 'sell',groupValue: val,onChanged: (value)
                            {
                              setState(() {
                                val = value as String;
                              });
                            },
                              activeColor: Colors.black,
                            ),
                          ),
                          ListTile(
                            title: const Text('Escrow'),
                            leading: Radio(value: 'escrow',groupValue: val,onChanged: (value)
                            {
                              setState(() {
                                val = value as String;
                              });
                            },
                              activeColor: Colors.black,
                            ),
                          ),
                          ListTile(
                            title: const Text('Free Money'),
                            leading: Radio(value: 'freemoney',groupValue: val,onChanged: (value)
                            {
                              setState(() {
                                val = value as String;
                              });
                            },
                              activeColor: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height:120, width: 500,
                        child: Card(  margin: const EdgeInsets.all(15), elevation: 5,color: Colors.lightGreen, shape:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                            child: Column(
                                children: const [
                                  SizedBox(height: 5),
                                  Text('Rate',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16)),
                                  TextField(style: TextStyle(color: Colors.black),decoration: InputDecoration(hintText: '   Your answer'))
                                ]
                            )
                        )),
                    Card( margin: const EdgeInsets.all(15), elevation: 5, color: Colors.lightGreen,shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                        child: Column( children: [
                          const SizedBox(height: 5),
                          const Text('Currency',textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16)),
                          ListTile( title: const Text('USDT'),
                            leading: Radio(value: 'usdt' ,groupValue: valu,onChanged: (value)
                            { setState(() {valu = value as String;}); }, activeColor: Colors.black,
                            ),
                          ),
                          ListTile( title: const Text('SGD'),
                            leading: Radio(value: 'sgd',groupValue: valu,onChanged: (value)
                            { setState(() {valu = value as String;}); }, activeColor: Colors.black,
                            ),
                          )
                        ] )
                    ),
                    SizedBox(height:120, width: 500,
                        child: Card(  margin: const EdgeInsets.all(15), elevation: 5, color: Colors.lightGreen,shape:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                            child: Column(
                                children: const [
                                  SizedBox(height: 5),
                                  Text('Amount',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16)),
                                  TextField(decoration: InputDecoration(hintText: '   Your answer'),)
                                ]
                            )
                        )),
                    SizedBox(height:120, width: 500,
                        child: Card(  margin: const EdgeInsets.all(15), elevation: 5, color: Colors.lightGreen,shape:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                            child: Column(
                                children: const [
                                  SizedBox(height: 5),
                                  Text('Remark',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16)),
                                  TextField(decoration: InputDecoration(hintText: '   Your answer'),)
                                ]
                            )
                        )),
                    SizedBox(height:120, width: 500,
                        child: Card(  margin: const EdgeInsets.all(15), color: Colors.lightGreen,elevation: 5, shape:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                            child: Column(
                                children: const [
                                  SizedBox(height: 5),
                                  Text('Profit(IF Escrow or Free Money)',textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16)),
                                  TextField(decoration: InputDecoration(hintText: '   Your answer'),)
                                ]
                            )
                        )),
                    const SizedBox(height: 10,),
                    const LinearProgressIndicator(color: Colors.lightGreen,minHeight: 3,backgroundColor: Colors.green,semanticsLabel: 'Page 1 of 1',),
                    const SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox( height: 40,
                          child: ElevatedButton(onPressed: (){ },
                            child: const Text('Submit',style: TextStyle(color: Colors.black,fontSize: 17)),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen),),),
                        const SizedBox(width: 150),
                        TextButton(onPressed:(){}, child: const Text('Clear form',style: TextStyle(color: Colors.lightGreen,fontSize: 16),))
                      ],
                    ),
                    const SizedBox(height: 10,)
                  ]
              )
          ),// s trailing comma makes auto-formatting nicer for build methods.
        )
    );
  }
}