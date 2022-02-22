import 'package:clothing_roll/ui/screens/auth/register.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({ Key? key }) : super(key: key);

  @override
  _loginPage createState() => _loginPage();
}

class _loginPage extends State<loginPage> {
  String username = "";
  String password = "";

  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context)
            .pop();
          },
          ),
        title: Text(
              'Login',
              style: TextStyle(
                fontSize: 26, 
                fontFamily: 'Klavika', 
                color: Colors.blue[700])
              ),

        ),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  

                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: ClipRRect(
                              borderRadius: BorderRadius.all(
                              Radius.circular(100)
                            ),
                          child: Image(
                            height: 150,
                            image: AssetImage('images/logo/power.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Login", 
                      style: TextStyle(
                        color: Colors.teal, 
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                      ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Username',
                              ),
                              validator: (value){
                                if (value!.isEmpty) {
                                  return "Required";
                                }
                                else{
                                  return null;
                                }
                              },
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                              validator: (value){
                                if (value!.isEmpty) {
                                  return "Required";
                                }
                                else{
                                  return null;
                                }
                              },
                            ),
                          ),

                          Container(
                            height: 50,
                            margin: EdgeInsets.all(20),
                            width: 400,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Login', style: TextStyle(fontSize: 20),),
                              onPressed: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    username = usernameController.text;
                                    password = passwordController.text;
                                  });
                                }
                                else{
                                  print("validation error");
                                }
                              },
                            )
                        ),

                        ],
                      )
                      ),
                  ),

                    

                  Row(
                  children: <Widget>[
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Register',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                        .push(MaterialPageRoute(
                          builder: (context)=>registerPage()
                          ));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),

                ],
              ),
            )
          ],
        ),
    );
  
  }
}