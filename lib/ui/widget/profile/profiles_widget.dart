import 'package:clothing_roll/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:clothing_roll/shred_preferences/shred_preferences_services.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({ Key? key }) : super(key: key);

  @override
  _ProfileWidget createState() => _ProfileWidget();
}

class _ProfileWidget extends State<ProfileWidget> {
  final PrefServices _prefServices = PrefServices();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage:AssetImage("images/c.jpeg")
                  ),
                  title: Text("Preeti", style: TextStyle(fontSize: 18)),
                  subtitle: Text(
                    'view your profile',
                    style: TextStyle(fontSize: 13)
                    ),
                  onTap: () => {
                      
                    },
                
                ),

                Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),


                ListTile(
                  leading: Icon(Icons.logout_outlined),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 14),
                    ),
                    onTap: () => {
                      _prefServices.readCache("username", "password").whenComplete(() => {
                        Navigator.of(context)
                        .push(MaterialPageRoute(
                          builder: (context)=>HomeScreen()
                          ))
                      })
                    },
                ),



              ],
            )
            ),
    );
  }
}