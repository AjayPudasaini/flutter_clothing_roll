import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class registerPage extends StatefulWidget {
  const registerPage({ Key? key }) : super(key: key);

  @override
  _registerPage createState() => _registerPage();
}

class _registerPage extends State<registerPage> {

  String username = "";
  String password = "";

  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Register',
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
                    padding: const EdgeInsets.only(top: 25, bottom: 5),
                    child: ClipRRect(
                              borderRadius: BorderRadius.all(
                              Radius.circular(100)
                            ),
                          child: Image(
                            height: 130,
                            image: AssetImage('images/logo/register.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                  ),


                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Register", 
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
                                  return "required username";
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
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                              ),
                              validator:MultiValidator([
                                RequiredValidator(errorText: "required email"),
                                EmailValidator(errorText: "email not validate")

                              ])
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
                              validator: MultiValidator([
                                RequiredValidator(errorText: "required password"),
                                MinLengthValidator(8, errorText: "required minimum 8 characher")
                              ])
                            ),
                          ),

                          Container(
                            height: 50,
                            margin: EdgeInsets.all(20),
                            width: 400,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Register', style: TextStyle(fontSize: 20),),
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
                    const Text('Already have account?'),
                    TextButton(
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                        .pop();
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