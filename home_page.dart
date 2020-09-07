import 'package:flutter/material.dart';
import '../widget/home_top_info.dart';
import '../widget/food_category.dart';
import '../widget/search_field.dart';
import '../widget/bought_foods.dart';
import '../data/food_data.dart';
import '../models/food_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> _foods=foods;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 20.0,
          ),
          searchField(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Bought Foods ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                  onTap: (){},
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  )),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _foods.map(_bulidFoodItem).toList()
            ,
          ),
        ],
      ),
    );
  }
  Widget _bulidFoodItem(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        price: food.price,
        category: food.category,
        discount: food.discount,
        rating: food.rating,

      ),
    );
  }
}
