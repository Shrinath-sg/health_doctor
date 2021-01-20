import 'package:flutter/material.dart';
import 'package:login_screen/Drawer.dart';
import 'package:login_screen/signUp.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final pass =TextEditingController();
  final email =TextEditingController();
  void verify(){
    setState(() {
      var check_email = email.text;
      var check_password = pass.text;
      if(check_email == "" && check_password == ""){
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title:Row(
              children: [
                Text("Enter your email id and pasword",
                  style: TextStyle(
                    fontSize: 15,
                  ),),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Text("ok"),
                color: Colors.blue,
              ),
            ],
          ),
        );

      }
      else if(check_email == "shrinath@gmail.com" && check_password == "123")
      {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title:Row(
              children: [
                Image.network('https://i.pinimg.com/originals/81/eb/f3/81ebf3a9b09d1f64e911e08df565c742.gif',
                  width: 80,height: 80,),
                Text("congratulations"),
              ],
            ),
            content: Text("Login Successfull"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserDrawer()),
                  );
                },
                child: Text("ok"),
                color: Colors.green,
              ),
            ],
          ),
        );

      }
      else{
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title:Row(
              children: [
                Image.network('https://www.seekpng.com/png/detail/138-1387775_login-to-do-whatever-you-want-login-icon.png',
                  width: 50,
                  height: 50,),
                Text("Register"),
              ],
            ),

            content: Text("Please Register before login"),

            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUp() ),
                  );
                },
                child: Text("ok"),
                color: Colors.green,
              ),
            ],
          ),
        );

      }

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      body: Center(
        child: Container(
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
              ])),
          //color: Colors.grey[100],
          child: ListView(
            children: [
              Container(
                child: ClipOval(
                  child: Image.network(
                    "https://cdn.dribbble.com/users/63973/screenshots/3519926/vibrant.png",
                    height: 80,
                    width: 80,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                padding: EdgeInsets.only(
                    left: 10, right: 0.0, top: 0.0, bottom: 0.0),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: false,
                  decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white)),
                  controller: email,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      )

                      //  prefixIcon: Icon(Icons.remove_red_eye),
                      ),
                  controller: pass,
                ),
              ),
              Container(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.white),
                ),
                padding: EdgeInsets.only(
                    left: 280, right: 0.0, top: 0.0, bottom: 0.0),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 120.0, right: 120.0, top: 50.0, bottom: 0.0),
                child: RaisedButton(
                  onPressed: verify,

                    // return showDialog(
                    //   context: context,
                    //   builder: (ctx) => AlertDialog(
                    //     title: Text("Successfull"),
                    //     //content: Text("You have raised a Alert Dialog Box"),
                    //     actions: <Widget>[
                    //       FlatButton(
                    //         onPressed: () {
                    //           Navigator.of(ctx).pop();
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => UserDrawer()));
                    //         },
                    //         child: Text("okay"),
                    //         color: Colors.green,
                    //       ),
                    //     ],
                    //   ),
                    // );

                  child: Text("LOGIN"),
                  color: Colors.blue[400],
                ),
              ),
              Container(
                child: Text("Terms & Conditions"),
                padding: const EdgeInsets.only(
                    left: 10.0, right: 0.0, top: 220.0, bottom: 0.0),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUp()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
