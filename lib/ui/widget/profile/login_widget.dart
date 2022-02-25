import 'package:clothing_roll/ui/screens/auth/login.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          children: [
            Image(image: NetworkImage("https://media.giphy.com/media/2ikwIgNrmPZICNmRyX/giphy.gif")),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  
                  onPressed: () {
                    Navigator.of(context)
                    .push(MaterialPageRoute(
                      builder: (context)=> loginPage()
                      ));
                  },
                  
                  label: Text('Login'), 
                  icon: Icon( 
                    Icons.login,
                    size: 24.0,
                  ),
                  
                ),
              ),
            ),
          ],
        ),
      );
    
  }
}