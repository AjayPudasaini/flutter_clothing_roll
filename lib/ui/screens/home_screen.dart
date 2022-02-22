import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  final sliderImages = [
    "images/slider/s1.jpg",
    "images/slider/s2.jpg",
    "images/slider/s3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 5),
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 0.15,
          child: CarouselSlider.builder(
            itemCount: sliderImages.length,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
              SizedBox(
                  width: MediaQuery.of(context).size.width*1.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(sliderImages[itemIndex], width: 100,),
                    )
                
              ),
              

            options: CarouselOptions(
              // height: 400,
              aspectRatio: 16/9,
              autoPlay: true,
              enableInfiniteScroll: true,
              viewportFraction: 0.9,
              // enlargeCenterPage: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800)
              ),
            ),
        ),

        Container(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            primary: false,
            padding: EdgeInsets.all(5),
            physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
            shrinkWrap: true,
            children: [
              Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.deepOrange[700]),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),



              Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),



Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),




Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),




Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),



Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),



Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),



Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),


Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),



Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),



Container(
                child: InkWell(
                  child: Card(
                    // color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(image: AssetImage("images/products/tshirt.jpg"),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tshirt for men",
                            style: TextStyle(fontSize: 18, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Rs: 500 /-",
                            style: TextStyle(fontSize: 15, fontFamily: 'openSans', color: Colors.black87),
                            ),
                        )
                      ],
                    ),
                    
                    ),
                    onTap: () => print("product item clicked"),
                )
              ),


            ],
        ),
        ),

        
      ],
    );
   
  
  }
}