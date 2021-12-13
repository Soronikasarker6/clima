import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation()async{
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }
  // void somethingExpect(int n){
  //   if(n>10){
  //     throw 'n is greater than 10.';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    String myMargin = '34';
    double? myMarginAsDouble;
    try{
      myMarginAsDouble = double.parse(myMargin);
    }
    catch(e){
      print(e);

    }
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(myMarginAsDouble ?? 40.0),
        color: Colors.red,
      ),
    );
  }
}
