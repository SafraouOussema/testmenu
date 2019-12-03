import 'package:flutter/material.dart';
import 'package:testmenu/custom_navigation_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
          elevation: 0.0,
          backgroundColor: drawerBackgroundColor,
              title: Center(
               child: Text(
              "Experience",
            ),
          )),
           drawer: CollapsingNavigationDrawer(),
          body: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               SizedBox(height: 20.0),
               _buildTitle("Skills"),
               SizedBox(height: 10.0),
               _buildSkillRow("Unity 3D",0.75),
               Divider(color: Colors.black38,),
               SizedBox(height: 5.0),
               _buildSkillRow("Spring Framework(Boot, Data, Rest, Security)",0.6),
               Divider(color: Colors.black38,),
               SizedBox(height: 5.0),
               _buildSkillRow("Angular",0.65),
               Divider(color: Colors.black38,),
               SizedBox(height: 5.0),
               _buildSkillRow("Flutter",0.5),
               Divider(color: Colors.black38,),
               SizedBox(height: 5.0),
               _buildSkillRow("SQL",0.5),
               Divider(color: Colors.black38,),
               SizedBox(height: 5.0),
               _buildSkillRow("PostgreSQL",0.5),
               Divider(color: Colors.black38,),
               SizedBox(height: 5.0),
               _buildSkillRow("Hibernate",0.5),
               SizedBox(height: 20.0),
               _buildTitle("EXPERIENCE"),
               _buildExperienceRow(company: "TUNIVISIONS", position: "Mobile/Web Developer", duration: "juin - aout 2019"),
               _buildExperienceRow(company: "EDUCATION4SIGHT", position: "Web Developer", duration: "juin - aout 2018"),
               _buildExperienceRow(company: "POLYJURIS", position: "Web Developer", duration: "février - mai 2017"),
               SizedBox(height: 20.0),
               _buildTitle("Projets Académiques"),
               _buildExperienceRow(company: "TEK-UP", position: "jeux video 2D :fantasy world est un jeu vidéo de rôle et d'action centré sur l'exploration, la résolution d'énigmes et le combat système d'évolution du personnage poussé (équipement, caractéristiques, niveau d'expérience, etc.)., se déroulant dans une ville imaginaire menacée par la destruction. \n", duration: "novembre -décembre 2019"),
               _buildExperienceRow(company: "TEK-UP", position: "jeux video 2D :Neverland est un jeu d'action-aventure centré sur l'exploratio et le combat, se déroulant dans un univers médiéval-fantastique et utilisant une vue de dessus. \n", duration: "janvier -mai 2019"),
               _buildExperienceRow(company: "TEK-UP", position: "conception et développement d’une application en android assurant pour l’étudiant de suivre son absence pour toutes les matières et pour les professeures de marquer les absences seulement quand le professeur enseigne cette matière et pendant 15 min après il ne peut pas modifier. \n", duration: "novembre - décembre 2018"),
               SizedBox(height: 20.0),
               _buildTitle("EXPÉRIENCES ASSOCIATIVES"),
               _buildExperienceRow(company: "Le cercle culturel des dragons de l’asie", position: "membre dans le departement logistique notre association a pour but d’approfondir les relations culturelles entre la Tunisie et les pays de l'Asie de l'Est Notre dernier événement Ryujin'Con 0 on a reçu plus 1200 visiteurs \n", duration: "aout 2017"),
               _buildExperienceRow(company: "Club robotique de l'université TIME", position: "Participation aux compétitions nationales et internationales en domaine robotiques Participation à des compétitions nationales eurobot,enicarthage \n", duration: "2014-2017"),
               SizedBox(height: 20.0),
               _buildTitle("Compétition"),
               _buildExperienceRow(company: "Global Game Jam", position: "est une game jam ayant lieu chaque année et réunissant des équipes de développement partout dans le monde. Il s'agit de la plus grande game jam au monde \n", duration: "2016,2018,2019"),
               SizedBox(height: 20.0),
               _buildTitle("ETUDES"),
               _buildExperienceRow(company: "TEK-UP", position: "Diplome national d’ingénieur en informatique et de la technologie spécialité :développement web et mobile et multimedia \n", duration: "2017-2020"),
               _buildExperienceRow(company: "TIME UNIVERSITÉ", position: "Diplome national licence en informatique de gestion \n", duration: "2014-2017"),
               SizedBox(height: 20.0),


             ],
           ),
          )
        ));
  }


  //Titre
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

  //skill
  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(skill.toUpperCase(), textAlign: TextAlign.right,)),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,//LinearProgressIndicator
          child: LinearPercentIndicator(
            percent: level,
            animation:true ,
            animationDuration: 2200,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  //Experience
  ListTile _buildExperienceRow({String company, String position, String duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(FontAwesomeIcons.solidCircle, size: 12.0, color: Colors.black54,),
      ),
      title: Text(company, style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
      subtitle: Text("$position ($duration)"),
    );
  }



}
