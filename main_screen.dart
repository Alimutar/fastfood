import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/favorite_page.dart';
import '../pages/profile_page.dart';

class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();

  }
  class _MainScreenState extends State<MainScreen> {
  int currentTabIndex =0;
  List<Widget>pages;
  Widget currentPage;
  HomePage homePage;
  OrderPage orderPage;
  FavoritPage favoritPage;
  ProfilePage profilePage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage=HomePage();
    orderPage=OrderPage();
    favoritPage=FavoritPage();
    profilePage=ProfilePage();
    pages=[homePage,orderPage,favoritPage,profilePage];
    currentPage=homePage;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
            currentPage=pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title:Text( "Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Order"),
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),

          ),
        ],
      ),
      body: currentPage,
      appBar: currentTabIndex ==1 ? AppBar(
        title:Text("Your Food Cart",style: TextStyle(color: Colors.black,fontSize:25.0,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ): null
      ,

    );
  }

  }