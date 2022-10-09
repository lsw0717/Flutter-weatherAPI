import 'package:json_annotation/json_annotation.dart';

part 'AirResult2.g.dart';

@JsonSerializable()
class AirResult2 {
  final String? status;
  final Data? data;

  AirResult2(this.status, this.data);

  factory AirResult2.fromJson(Map<String, dynamic> json) =>
      _$AirResult2FromJson(json);

  Map<String, dynamic> toJson() => _$AirResult2ToJson(this);
}

@JsonSerializable()
class Data {
  final String? city;
  final String? state;
  final String? country;
  final Location? location;
  final Current? current;

  Data(this.city, this.state, this.country, this.location, this.current);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Location {
  final String? type;
  final List<double>? coordinates;

  Location(this.type, this.coordinates);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Current {
  final Pollution? pollution;
  final Weather? weather;

  Current(this.pollution, this.weather);

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class Pollution {
  final String? ts;
  final int? aqius;
  final String? mainus;
  final int? aqicn;
  final String? maincn;

  Pollution(this.ts, this.aqius, this.mainus, this.aqicn, this.maincn);

  factory Pollution.fromJson(Map<String, dynamic> json) =>
      _$PollutionFromJson(json);

  Map<String, dynamic> toJson() => _$PollutionToJson(this);
}

@JsonSerializable()
class Weather {
  final String? ts;
  final int? tp;
  final int? pr;
  final int? hu;
  final double? ws;
  final int? wd;
  final String? ic;

  Weather(this.ts, this.tp, this.pr, this.hu, this.ws, this.wd, this.ic);

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
