import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_weather_api_app/model/AirResult_json_to_dart_website/AirResult.dart';

import 'model/AirResult_json_serializable/AirResult2.dart';
import 'model/AireResult_json_to_dart_plugin/AirResult3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather API APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AirResult? _result = null;
  AirResult2? _result2 = null;
  AirResult3? _result3 = null;

  @override
  void initState() {
    super.initState();
    //fetchData();
    //fetchData2();
    fetchData3();
  }

  void fetchData() async {
    try {
      Response response = await Dio().get(
          'http://api.airvisual.com/v2/nearest_city?key=ee43ce89-c783-4e63-af75-c887eb91dc70');
      AirResult result = AirResult.fromJson(json.decode(response.toString()));
      print('http 통신 상태 : ${result.status.toString()}');
      setState(() {
        _result = result;
      });
    } catch (e) {
      print(e);
    }
  }

  void fetchData2() async {
    try {
      Response response = await Dio().get(
          'http://api.airvisual.com/v2/nearest_city?key=ee43ce89-c783-4e63-af75-c887eb91dc70');
      AirResult2 result = AirResult2.fromJson(json.decode(response.toString()));
      print('http 통신 상태 : ${result.status.toString()}');
      setState(() {
        _result2 = result;
      });
    } catch (e) {
      print(e);
    }
  }

  void fetchData3() async {
    try {
      Response response = await Dio().get(
          'http://api.airvisual.com/v2/nearest_city?key=ee43ce89-c783-4e63-af75-c887eb91dc70');
      AirResult3 result = AirResult3.fromJson(json.decode(response.toString()));
      print('http 통신 상태 : ${result.status.toString()}');
      setState(() {
        _result3 = result;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        //_result == null
        //_result2 == null
        _result3 == null
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '현재 위치 미세먼지',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Card(
                      child: Column(
                        children: [
                          Container(
                            color: getColor(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                    //'${_result?.data?.current?.pollution?.aqius ?? null}',
                                    // '${_result2?.data?.current?.pollution?.aqius ?? null}',
                                    '${_result3?.data?.current?.pollution?.aqius ?? null}',
                                    style: TextStyle(fontSize: 40)),
                                Text(getString(), style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                //'http://airvisual.com/images/${_result?.data?.current?.weather?.ic}.png',
                                //'http://airvisual.com/images/${_result2?.data?.current?.weather?.ic}.png',
                                'http://airvisual.com/images/${_result3?.data?.current?.weather?.ic}.png',
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                  //'${_result?.data?.current?.weather?.tp ?? null}도',
                                  //'${_result2?.data?.current?.weather?.tp ?? null}도',
                                  '${_result3?.data?.current?.weather?.tp ?? null}도',
                                  style: TextStyle(fontSize: 16)),
                              Text(
                                  //'습도 ${_result?.data?.current?.weather?.hu ?? null}%',
                                  //'습도 ${_result2?.data?.current?.weather?.hu ?? null}%',
                                  '습도 ${_result3?.data?.current?.weather?.hu ?? null}%',
                                  style: TextStyle(fontSize: 16)),
                              Text(
                                  //'풍속 ${_result?.data?.current?.weather?.ws ?? null}m/s',
                                  //'풍속 ${_result2?.data?.current?.weather?.ws ?? null}m/s',
                                  '풍속 ${_result3?.data?.current?.weather?.ws ?? null}m/s',
                                  style: TextStyle(fontSize: 16))
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(155, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: getColor()),
                          child: Icon(Icons.refresh),
                          onPressed: () {
                            //fetchData();
                            //fetchData2();
                            fetchData3();
                          }),
                    )
                  ],
                ),
              ));
  }

  Color getColor() {
    //int? aquis = _result?.data?.current?.pollution?.aqius;
    //int? aquis = _result2?.data?.current?.pollution?.aqius;
    int? aquis = _result3?.data?.current?.pollution?.aqius;
    if (aquis != null) {
      if (aquis <= 50) {
        return Colors.greenAccent;
      } else if (aquis <= 100) {
        return Colors.yellow;
      } else if (aquis <= 150) {
        return Colors.orange;
      } else {
        return Colors.red;
      }
    } else {
      return Colors.white;
    }
  }

  String getString() {
    //int? aquis = _result?.data?.current?.pollution?.aqius;
    //int? aquis = _result2?.data?.current?.pollution?.aqius;
    int? aquis = _result3?.data?.current?.pollution?.aqius;
    if (aquis != null) {
      if (aquis <= 50) {
        return '좋음';
      } else if (aquis <= 100) {
        return '보통';
      } else if (aquis <= 150) {
        return '나쁨';
      } else {
        return '매우나쁨';
      }
    } else {
      return '로드중';
    }
  }
}


