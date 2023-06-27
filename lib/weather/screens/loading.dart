import 'package:feple/data/my_location.dart';
import 'package:feple/weather/screens/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:feple/data/network.dart';
const apiKey = '8a5641156b4c3c4db251c584d89e78e1';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  double? latitude3;
  double? longitude3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async{
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longitude3 = myLocation.longitude2;
    print(latitude3);
    print(longitude3);

    Network network = Network('https://api.openweathermap.org/data/2.5/weather?lat=${latitude3}&lon=${longitude3}&appid=${apiKey}&units=metric');
    //Network network = Network('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1');
    var weatherData = await network.getJsonData();
    print(weatherData);
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return WeatherScreen(parseWeatherData: weatherData,);
    } ));
  }
/*
  void fetchData() async{

      var myJson = parsingData['weather'][0]['description'];
      var wind = parsingData(jsonData)['wind']['speed'];
      var id = parsingData['id'];
      print(myJson);
      print(wind);
      print(id);
    }
    else{
      print('response.statusCode');
    }

  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){},
          child: Text(
            'Get my location',
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
