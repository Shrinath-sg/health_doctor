//import 'package:drawer/newPage.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/BMI.dart';
import 'package:login_screen/DemoPage.dart';

class UserDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return UserState();
  }

}
class UserState extends State<UserDrawer>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("USER DRAWER"),
        centerTitle: true,
      ),
      drawer:Drawer( child: ListView(
        children :<Widget>
        [UserAccountsDrawerHeader(decoration:  BoxDecoration(image: DecorationImage(
              image: AssetImage("assets/images/drawerImage.jpg"),
              fit: BoxFit.cover
          ),
          ),
            accountName: Text("Shrinath SG"),
            accountEmail: Text("shrinathsgavadoji@gmail.com"),
            currentAccountPicture: CircleAvatar(
              // backgroundColor:
              // Theme.of(context).platform == TargetPlatform.android
              //     ? Colors.blue
              //     : Colors.white,
              // child: Text(
              //   "A",
              //   style: TextStyle(fontSize: 40.0),
              // ),
              child:ClipOval(
                child: Image.network(
                  'https://images.unsplash.com/photo-1541855492-581f618f69a0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
              ),
              // backgroundImage: NetworkImage("https://images.unsplash.com/photo-1480429370139-e0132c086e2a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
              //   ),
            ),
          ),
          ListTile(leading: Icon(Icons.android_outlined),
            title: Text("Item1"),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NewP1()));

            },
          ),
          ListTile(leading: Icon(Icons.add_a_photo_outlined),
            title: Text("Item2"),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NewP1()));
              Navigator.pop(context);
            },
          ),
          ListTile(leading: Icon(Icons.style),
            title: Text("Item3"),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NewP1()));
              Navigator.pop(context);
            },
          ),
          ListTile(leading: Icon(Icons.account_balance),
            title: Text("Item4"),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NewP1()));
              Navigator.pop(context);
            },
          ),
          Container(padding:const EdgeInsets.only(left: 0.0,right: 0.0,top: 0.0,bottom: 0.0),
            child:
          ListTile(leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NewP1()));
              Navigator.pop(context);
            },
          ),
    ),
        ],
      ),
      ),


      body: Container(child: ListView(
        children: [Container(child:
        Image.network(
            'https://image.shutterstock.com/image-photo/professional-road-bicycle-racer-action-600w-1047539635.jpg'),
          padding: EdgeInsets.only(left: 0.0,right: 0.0,top: 10.0,bottom: 10.0),),
          Container(child:
          Image.network(
              'https://image.shutterstock.com/image-photo/successful-football-soccer-basketball-baseball-600w-1034455687.jpg'),
            padding: EdgeInsets.only(left: 0.0,right: 0.0,top: 10.0,bottom: 10.0),),
          Container(child:
          Image.network(
              "https://image.shutterstock.com/image-photo/young-fitness-woman-runner-stretching-600w-291041570.jpg"),
            padding: EdgeInsets.only(left: 0.0,right: 0.0,top: 10.0,bottom: 10.0),),
          Container(child:
          Image.network(
              "https://image.shutterstock.com/image-photo/sport-sprinter-leaving-starting-blocks-600w-422100022.jpg"),
            padding: EdgeInsets.only(left: 0.0,right: 0.0,top: 10.0,bottom: 10.0),),

          Container(
            child: Row(
              children: [Container(child:
              Column(
                children: [
                  RaisedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => BmiCalc()));},color: Colors.yellow,child: Text("Next"),),
                ],
              ),


                padding: EdgeInsets.only(left: 160.0,right: 0.0,top: 20.0,bottom: 0.0),
              ),

              ],
            ),
          )
        ],
      ),
        color: Colors.black26,
      ),

    );
  }

}