import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'screens/filters_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),
        ),
          headline6: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
          )
      ),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/':(ctx) =>TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailsScreen.routeName:(ctx) => MealDetailsScreen(),
        FilterScreen.routeName:(ctx) => FilterScreen(),
      },
//      onGenerateRoute: (settings) {
//        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
//
//      },
    onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
    },
    );
  }
}


