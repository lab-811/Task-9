import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Weather {
  final String id;
  final String day;
  final String temperature;
  final Icon icon;

  Weather(
      {@required this.id,
        @required this.day,
        @required this.temperature,
        @required this.icon});
}