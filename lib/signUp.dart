import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/Login.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return SignState();
  }

}
class SignState extends State<SignUp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
     return Scaffold(
         floatingActionButton: FloatingActionButton(
           backgroundColor: Colors.transparent,
           child: Icon(Icons.cancel,size: 50,),
           onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
           },
         ),
         floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

       body: Center(
         child:Container(
           decoration: BoxDecoration(
               gradient: LinearGradient(
                   begin: Alignment.topRight,
                   end: Alignment.bottomLeft,
                   stops: [
                     0.10,
                     0.6,
                     0.8,
                     0.4
                   ],
                   colors: [
                   Colors.deepPurple[600],
                   Colors.purple,
                   Colors.purple,
                   Colors.grey
  ]
               )),
    //color: Colors.grey[100],
    child: ListView(
      children: [
        Container(
          child:ClipOval(
            child: Image.network("https://cdn.dribbble.com/users/63973/screenshots/3519926/vibrant.png",
              height:80 ,
            width: 80,
            fit: BoxFit.scaleDown,),
          ),
        ),
        Container(
          child: Text("REGISTER",style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
          padding: EdgeInsets.only(left: 10,right: 0.0,top: 0.0,bottom: 0.0),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            style: TextStyle(color: Colors.white),
            obscureText: false,
            decoration: InputDecoration(
    //border: OutlineInputBorder(),
              labelText: 'First Name',
              labelStyle: TextStyle(color: Colors.white)
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            style: TextStyle(color: Colors.white),
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Last Name',
                labelStyle: TextStyle(color: Colors.white)
    //  prefixIcon: Icon(Icons.remove_red_eye),
    ),
    ),
    ),
      Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          style: TextStyle(color: Colors.white),
          obscureText: false,
          decoration: InputDecoration(
            //border: OutlineInputBorder(),
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.white)
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          style: TextStyle(color: Colors.white),
          obscureText: true,
          decoration: InputDecoration(
              labelText: 'Password',
            labelStyle: TextStyle(color: Colors.white)
            //  prefixIcon: Icon(Icons.remove_red_eye),
          ),
        ),
      ),

    Container(
    padding: const EdgeInsets.only(left: 120.0,right: 120.0,top: 50.0,bottom: 0.0),
    child: RaisedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    },child: Text("CREATE ACCOUNT"),color: Colors.blue[400],),
    ),
    ],
    ),
    ),
      ),

    );
  }

}