import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  _CartScreen createState() => _CartScreen();
}

class _CartScreen extends State<CartScreen> {
  List<String> cartItems = ['tshirt', 'jacket', 'white shirt', 'jacket', 'jacket','jacket','jacket','jacket',];
  @override
  Widget build(BuildContext context) {
    return 
     Column(
       children: [
         Expanded(
           child: ListView.builder(
             shrinkWrap: true,
             itemCount: cartItems.length,
             itemBuilder: (context, i)=>Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ListTile(
                     contentPadding: EdgeInsets.all(5),
                     leading: Image(
                       image: AssetImage('images/products/tshirt.jpg'),
                       ),

                      title: Text(
                        cartItems[i],
                        style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                        ),
                        tileColor: Colors.lightBlue[50],
                        onTap: () => print("user tapped from notifications"),
                        subtitle: Text("Quantity 5", style: TextStyle(fontSize: 12, fontFamily: 'openSans', color: Colors.black87)),
                        trailing: Wrap(
                          spacing: 8,
                          children: [

                           
                            IconButton(
                              iconSize: 25,
                              color: Colors.grey[900],
                              icon: Icon(Icons.edit),
                              
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              tooltip: "update cart item",
                              onPressed: () {
                                print("update icon clicked");
                              },

                              
                            ),
                          
                            IconButton(
                              iconSize: 25,
                              color: Colors.red[900],
                              icon: Icon(Icons.delete),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              tooltip: "delete cart item",
                              onPressed: () {
                                print("delete icon clicked");
                              },
                            ),

                          ],
                        )
                        
                        ),
                        
                   )
                 
               ],
             )

             )
          )



       ],
    );
  }
}


