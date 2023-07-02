import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';



class Model {
  Widget? getWeatherIcon(int condition) {
    if (condition < 300) {
      return SvgPicture.asset(
        'svg/weather_icon/Climacon-cloud_ligthning.svg',
        color: Colors.black87,
      );
    } else if (condition < 600) {
      return SvgPicture.asset(
        'svg/weather_icon/climacon-cloud_snow_alt.svg',
        color: Colors.black87,
      );
    } else if (condition == 800) {
      return SvgPicture.asset(
        'svg/weather_icon/climacon-sun.svg',
        color: Colors.black87,
      );
    } else if (condition <= 804) {
      return SvgPicture.asset(
        'svg/weather_icon/climacon-cloud_sun.svg',
        color: Colors.black87,
      );
    } else{
      return SvgPicture.asset(
        'svg/weather_icon/icon.svg',
        color: Colors.black87,
      );
    }
  }
}
