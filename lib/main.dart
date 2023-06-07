

import 'package:flutter/material.dart';
import 'package:start_new_project/model/model.dart';
import 'package:start_new_project/screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            "Super Cars",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Tesla"),
            subtitle: Text("2020"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Cars(model: Model(isElectr: true, name: "Tesla", year: "2022", image: "assets/images/tesla.jpg"));
              }));
            },
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("BMW"),
            subtitle: Text("2019"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Cars(model: Model(isElectr: false, name: "BMW", year: "2019", image: "assets/images/bmw.jpg"));
              }));
            },
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Lamborghini"),
            subtitle: Text("2012"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Cars(model: Model(isElectr: false, name: "Lamborghini", year: "2012", image: "assets/images/lamborghini.jpg"));
              }));
            },
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Mercedes - Benz"),
            subtitle: Text("2012"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Cars(model: Model(isElectr: true, name: "Mercedes - Benz", year: "2012", image: "assets/images/lamborghini.jpg"));
              }));
            },
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Matiz"),
            subtitle: Text("2015"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Cars(model: Model(isElectr: true, name: "Matiz", year: "2015", image: "assets/images/matiz.jpg"));
              }));
            },
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

