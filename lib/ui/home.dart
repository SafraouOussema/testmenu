import 'package:flutter/material.dart';
import 'package:testmenu/custom_navigation_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: drawerBackgroundColor,
          title: Center(
            child: Text(
              "Home",
            ),
          )),
         drawer: CollapsingNavigationDrawer(),
            body:SingleChildScrollView(
              child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  _buildHeader(),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200
                    ),
                    child: Text("Passionné de développement web, mobile/jeux vidéo. Je cherche à traduire mon expérience en tant que gamer et développeur doué au service de la création des applications à succès offrant une expérience attirante aux utilisateurs"),
                  ),
                  SizedBox(height: 20.0),
                  _buildTitle("ETUDES"),
                  _buildExperienceRow(company: "TEK-UP", position: "Diplome national d’ingénieur en informatique et de la technologie spécialité :développement web et mobile et multimedia \n", duration: "2017-2020"),
                  SizedBox(height: 20.0),
                  _buildTitle("Contact"),
                  SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 30.0),
                      Icon(Icons.mail, color: Colors.black54,),
                      SizedBox(width: 10.0),
                      Text("safraou.oussema@gmail.com", style: TextStyle(
                          fontSize: 16.0
                      ),),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 30.0),
                      Icon(Icons.phone, color: Colors.black54,),
                      SizedBox(width: 10.0),
                      Text("+216-55956256", style: TextStyle(
                          fontSize: 16.0
                      ),),
                    ],
                  ),
                  _buildSocialsRow(),
                  SizedBox(height: 20.0),

                ],
              )
            )
        ));
  }

  Row _buildHeader() {
    return Row(children: <Widget>[
      SizedBox(width: 20.0),
      Container(
          width: 100.0,
          height: 100.0,
          child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                  radius: 45.0,
                  backgroundImage: new AssetImage('assets/profil.jpg'),
              )
          )
      ),
      SizedBox(width: 20.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Safraou Oussema", style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10.0),
          Text("Full Stack Developer"),
          SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              Icon(FontAwesomeIcons.map, size: 12.0, color: Colors.black54,),
              SizedBox(width: 10.0),
              Text("EL Mourouj, Tunis", style: TextStyle(
                  color: Colors.black54
              ),),
            ],
          ),
        ],
      )
    ],);
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title.toUpperCase(), style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),),
          Divider(color: Colors.black54,),
        ],
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.facebookF),
          onPressed: (){
            _launchURL("https://facebook.com/jourthoma");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: (){
            _launchURL("https://github.com/SafraouOussema");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.linkedinIn),
          onPressed: (){
            _launchURL("https://www.linkedin.com/in/oussama-safraou-3a8b29b9/");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.red,
          icon: Icon(FontAwesomeIcons.youtube),
          onPressed: (){
            _launchURL("https://www.youtube.com/user/moijerbi");
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }
  ListTile _buildExperienceRow({String company, String position, String duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle, size: 12.0, color: Colors.black54,),
      ),
      title: Text(company, style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
      subtitle: Text("$position ($duration)"),
    );
  }


}
