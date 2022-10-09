// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AirResult2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirResult2 _$AirResult2FromJson(Map<String, dynamic> json) => AirResult2(
      json['status'] as String?,
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirResult2ToJson(AirResult2 instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      json['city'] as String?,
      json['state'] as String?,
      json['country'] as String?,
      json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'location': instance.location,
      'current': instance.current,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      json['type'] as String?,
      (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      json['pollution'] == null
          ? null
          : Pollution.fromJson(json['pollution'] as Map<String, dynamic>),
      json['weather'] == null
          ? null
          : Weather.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'pollution': instance.pollution,
      'weather': instance.weather,
    };

Pollution _$PollutionFromJson(Map<String, dynamic> json) => Pollution(
      json['ts'] as String?,
      json['aqius'] as int?,
      json['mainus'] as String?,
      json['aqicn'] as int?,
      json['maincn'] as String?,
    );

Map<String, dynamic> _$PollutionToJson(Pollution instance) => <String, dynamic>{
      'ts': instance.ts,
      'aqius': instance.aqius,
      'mainus': instance.mainus,
      'aqicn': instance.aqicn,
      'maincn': instance.maincn,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      json['ts'] as String?,
      json['tp'] as int?,
      json['pr'] as int?,
      json['hu'] as int?,
      (json['ws'] as num?)?.toDouble(),
      json['wd'] as int?,
      json['ic'] as String?,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'ts': instance.ts,
      'tp': instance.tp,
      'pr': instance.pr,
      'hu': instance.hu,
      'ws': instance.ws,
      'wd': instance.wd,
      'ic': instance.ic,
    };
