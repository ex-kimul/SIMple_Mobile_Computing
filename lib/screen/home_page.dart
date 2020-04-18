import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatefulWidget {
  final VoidCallback signOut;
  HomeScreen(this.signOut);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

_launchURL() async {
  const url = 'https://lapor.saberpungli.id';
  if (await canLaunch(url )) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


class _HomeScreenState extends State<HomeScreen> {
  signOut() {
   setState(() {
     widget.signOut();
   });
 }

 var value;
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");
    });
  }

  @override
 void initState() {
   // TODO: implement initState
   super.initState();
   getPref();
 }



   @override
   Widget build(BuildContext context) {
     // TODO: implement build
     return MaterialApp(
       home: Scaffold(
         resizeToAvoidBottomPadding: false,
         bottomNavigationBar: new BottomAppBar(
           color : Colors.red,
           child: new Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               IconButton(onPressed: _launchURL, icon: Icon(Icons.report),
               color : Colors.white
               ),
               Text("LAPORKAN PUNGLI",
                   style : TextStyle (color : Colors.white)
               ),
             ],
           ),

         ),
         appBar: AppBar(
           title: Text(
             "SIMple (Alpha)",
             style: TextStyle(fontSize: 18.0),
           ),
           actions: <Widget>[
             IconButton(
               onPressed: () {
                 signOut();
               },
               icon: Icon(Icons.lock_open),
             )
           ],
           backgroundColor: Colors.red,
         ),
         backgroundColor: Colors.white,
         body: SingleChildScrollView(
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Row (
                   children: [
                     new  CircleAvatar(
                       radius: 63,
                       backgroundImage: AssetImage('images/aa.png'),
                     ),
                     new  CircleAvatar(
                       radius: 70,
                       backgroundImage: AssetImage('images/ab.jpg'),
                     ),
                     new CircleAvatar(
                       radius: 63,
                       backgroundImage: AssetImage('images/ac.png'),
                     ),
                   ],
                 ),
                 Text(
                   'KADAFI EKA SAKTI',
                   style: TextStyle(
                     fontFamily: 'Oxanium',
                     fontSize: 25,
                     color: Colors.black,
                   ),
                 ),
                 Text(
                   'No. SIM : 990411350013',
                   style: TextStyle(
                     fontSize: 20,
                     fontFamily: 'Oxanium',
                     color: Colors.black,
                     letterSpacing: 2.5,
                   ),
                 ),
                 SizedBox(
                   height: 20.0,
                   width: 200,
                   child: Divider(
                     color: Colors.teal[100],
                   ),
                 ),

                 Card(
                   color: Colors.black,
                   margin:
                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                   child: ListTile(
                     leading: Icon(
                       Icons.school,
                       color: Colors.red[900],
                     ),
                     title: Text(
                       'PELAJAR / MAHASISWA',
                       style: TextStyle(fontSize: 20.0, fontFamily: 'Oxanium',
                         color: Colors.white,),
                     ),
                   ),
                 ),
                 Card(
                     color: Colors.black,
                     margin:
                     EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                     child: ListTile(
                       leading: Icon(
                         Icons.phone,
                         color: Colors.red[900],
                       ),
                       title: Text(
                         '+62 82179614947',
                         style:
                         TextStyle(fontFamily: 'Oxanium',
                           fontSize: 20.0,
                           color: Colors.white,),
                       ),
                     )),
                 Card(
                   color: Colors.black,
                   margin:
                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                   child: ListTile(
                     leading: Icon(
                       Icons.cake,
                       color: Colors.red[900],
                     ),
                     title: Text(
                       'Sungailiat, 29-04-1999',
                       style: TextStyle(fontSize: 20.0, fontFamily: 'Oxanium',
                         color: Colors.white,),
                     ),
                   ),
                 ),
                 Card(
                   color: Colors.black,
                   margin:
                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                   child: ListTile(
                     leading: Icon(
                       Icons.brightness_4,
                       color: Colors.red[900],
                     ),
                     title: Text(
                       'Islam',
                       style: TextStyle(fontSize: 20.0, fontFamily: 'Oxanium',
                         color: Colors.white,),
                     ),
                   ),
                 ),
                 Card(
                   color: Colors.black,
                   margin:
                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                   child: ListTile(
                     leading: Icon(
                       Icons.wc,
                       color: Colors.red[900],
                     ),
                     title: Text(
                       'Laki-laki',
                       style: TextStyle(fontSize: 20.0, fontFamily: 'Oxanium',
                         color: Colors.white,),
                     ),
                   ),
                 ),
                 Card(
                   color: Colors.black,
                   margin:
                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                   child: ListTile(
                     leading: Icon(
                       Icons.mail_outline,
                       color: Colors.red[900],
                     ),
                     title: Text(
                       'kadafieka@gmail.com',
                       style: TextStyle(fontSize: 20.0, fontFamily: 'Oxanium',
                         color: Colors.white,),
                     ),
                   ),
                 ),
                 Card(
                   color: Colors.black,
                   margin:
                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                   child: ListTile(
                     leading: Icon(
                       Icons.home,
                       color: Colors.red[900],
                     ),
                     title: Text(
                       'Perumahan Nuwo Sriwijaya Permai, No. D1',
                       style: TextStyle(fontSize: 20.0, fontFamily: 'Oxanium'
                         ,color: Colors.white,),
                     ),
                   ),
                 ),
                 Card(
                   color: Colors.black,
                   margin:
                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                   child: ListTile(
                     leading: Icon(
                       Icons.flight,
                       color: Colors.red[900],
                     ),
                     title: Text(
                       'Muntok, Bangka barat, Bangka Belitung',
                       style: TextStyle(fontSize: 20.0, fontFamily: 'Oxanium',
                         color: Colors.white,),
                     ),
                   ),
                 ),
                 Card(
                   color: Colors.black,
                   margin:
                   EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                   child: ListTile(
                     leading: Icon(
                       Icons.access_alarm,
                       color: Colors.red[900],
                     ),
                     title: Text(
                       'Berlaku S/d : 29-04-2022',
                       style: TextStyle(fontSize: 20.0, fontFamily: 'Oxanium',
                         color: Colors.white,),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
       ),
     );

  }
}