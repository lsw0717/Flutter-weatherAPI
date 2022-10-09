class Weather {
  Weather({
      this.ts, 
      this.tp, 
      this.pr, 
      this.hu, 
      this.ws, 
      this.wd, 
      this.ic,});

  Weather.fromJson(dynamic json) {
    ts = json['ts'];
    tp = json['tp'];
    pr = json['pr'];
    hu = json['hu'];
    ws = json['ws'];
    wd = json['wd'];
    ic = json['ic'];
  }
  String? ts;
  int? tp;
  int? pr;
  int? hu;
  double? ws;
  int? wd;
  String? ic;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ts'] = ts;
    map['tp'] = tp;
    map['pr'] = pr;
    map['hu'] = hu;
    map['ws'] = ws;
    map['wd'] = wd;
    map['ic'] = ic;
    return map;
  }

}