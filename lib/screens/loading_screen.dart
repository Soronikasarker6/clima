import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKey = '695a070708f048ff418408a5af616f7b';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? latitude;
  double? longitude;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();

  }

  void getLocationData()async{
    Location location = Location();
    await location.getCurrentLocation();


     NetworkHolder networkHelper = NetworkHolder ('https://api.openweathermap.org/data/'
         '2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
     var weatherData = await networkHelper.getData();

     Navigator.push(context, MaterialPageRoute(builder: (context){
       return LocationScreen(locationWeather: weatherData ,);
     }));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
        ),
      ),
    );
  }
}
