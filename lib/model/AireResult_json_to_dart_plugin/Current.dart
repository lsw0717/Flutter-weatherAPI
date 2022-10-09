import 'Pollution.dart';
import 'Weather.dart';

class Current {
  Current({
      this.pollution, 
      this.weather,});

  Current.fromJson(dynamic json) {
    pollution = json['pollution'] != null ? Pollution.fromJson(json['pollution']) : null;
    weather = json['weather'] != null ? Weather.fromJson(json['weather']) : null;
  }
  Pollution? pollution;
  Weather? weather;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (pollution != null) {
      map['pollution'] = pollution?.toJson();
    }
    if (weather != null) {
      map['weather'] = weather?.toJson();
    }
    return map;
  }

}