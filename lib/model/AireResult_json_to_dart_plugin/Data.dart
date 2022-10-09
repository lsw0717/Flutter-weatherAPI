import 'Location.dart';
import 'Current.dart';

class Data {
  Data({
      this.city, 
      this.state, 
      this.country, 
      this.location, 
      this.current,});

  Data.fromJson(dynamic json) {
    city = json['city'];
    state = json['state'];
    country = json['country'];
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    current = json['current'] != null ? Current.fromJson(json['current']) : null;
  }
  String? city;
  String? state;
  String? country;
  Location? location;
  Current? current;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['city'] = city;
    map['state'] = state;
    map['country'] = country;
    if (location != null) {
      map['location'] = location?.toJson();
    }
    if (current != null) {
      map['current'] = current?.toJson();
    }
    return map;
  }

}