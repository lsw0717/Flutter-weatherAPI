class Pollution {
  Pollution({
      this.ts, 
      this.aqius, 
      this.mainus, 
      this.aqicn, 
      this.maincn,});

  Pollution.fromJson(dynamic json) {
    ts = json['ts'];
    aqius = json['aqius'];
    mainus = json['mainus'];
    aqicn = json['aqicn'];
    maincn = json['maincn'];
  }
  String? ts;
  int? aqius;
  String? mainus;
  int? aqicn;
  String? maincn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ts'] = ts;
    map['aqius'] = aqius;
    map['mainus'] = mainus;
    map['aqicn'] = aqicn;
    map['maincn'] = maincn;
    return map;
  }

}