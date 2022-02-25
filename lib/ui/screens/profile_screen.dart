import 'package:clothing_roll/shred_preferences/shred_preferences_services.dart';
import 'package:clothing_roll/ui/widget/profile/login_widget.dart';
import 'package:clothing_roll/ui/widget/profile/profiles_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {

  final PrefServices _prefServices = PrefServices();


  Widget pages(){
    _prefServices.readCache("username", "password").then((value) {
    if (value != null) {
        return ProfileWidget();
      }
      else{
        return LoginWidget();
       }
     });
    //  return LoginWidget();
  }

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      child: pages()
    
    );
  
  }
}