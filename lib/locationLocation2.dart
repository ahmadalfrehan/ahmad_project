// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:plp0/F.dart';
import 'package:plp0/Login.dart';
import 'package:plp0/SignUp.dart';

import 'MyProfile.dart';

class LocationLocation2 extends StatefulWidget {
  @override
  _LocationLocation2State createState() => _LocationLocation2State();
}

class _LocationLocation2State extends State<LocationLocation2> {
  PermissionStatus? _permissionGranted;
  bool? _serviceEnabled;
  LocationData? _location;
  double? latitude1;
  double? longitude2;
  double? speed3;
  double? time4;
  double? horizontala;
  double? verticala;
  double? anything;
  bool? ismok;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0.0,
        title: const Text("Location app"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 609,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                19,
              ),
              color: Colors.teal,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                SelectableText(
                  'your current position is : \n\n' +
                      latitude1.toString() +
                      "    " +
                      longitude2.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.5,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                SelectableText(
                  "   the speed is: \n\n" + speed3.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.5,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                SelectableText(
                  " the speed accuracy is : \n\n" + anything.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.5,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                SelectableText(
                  "   the time is: \n\n" + time4.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.5,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                SelectableText(
                  "   the horizontalA is: \n\n" + horizontala.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.5,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                SelectableText(
                  " the verticalaA is: \n\n" + verticala.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.5,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                SelectableText(
                  "is Mock ?: \n\n" + ismok.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.5,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'how to use this numbers to get your',
                style: TextStyle(),
              ),
              MaterialButton(
                child: const Text(
                  'Location ?',
                  style: const TextStyle(color: Colors.lightBlue),
                ),
                onPressed: () {
                  var e = AlertDialog(
                    actions: <Widget>[
                      TextButton(
                        child: const Text(
                          'Ok',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                    content: Container(
                      height: 110,
                      child: Column(
                        children: [
                          const Divider(color: Colors.grey),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                              color: Colors.orange,
                            ),
                            child: const ListTile(
                              title: Text(
                                'you can copy this to number and paste in search icon in google map to see you current postion',
                                style: TextStyle(),
                              ),
                            ),
                          ),
                          const Divider(color: Colors.grey),
                        ],
                      ),
                    ),
                  );
                  showDialog(context: context, builder: (context) => e);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                },
                child: Text('MyProfile>'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text('SignUp>'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                child: Text('Login>'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => F(),
                    ),
                  );
                },
                child: Text('First page>'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> checkLocation() async {
    Location location = new Location();
    _serviceEnabled = await location.serviceEnabled();
    if (_serviceEnabled == true) {
      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.granted) {
        print('its granted first ');
        location.onLocationChanged.listen((LocationData currentlocation) {
          setState(() {
            latitude1 = currentlocation.latitude;
            longitude2 = currentlocation.longitude;
            speed3 = currentlocation.speed;
            time4 = currentlocation.time;
            horizontala = currentlocation.headingAccuracy;
            verticala = currentlocation.verticalAccuracy;
            anything = currentlocation.speedAccuracy;
            ismok = currentlocation.isMock;
          });
        });
        _location = await location.getLocation();
        print(_location!.latitude.toString() +
            "   " +
            _location!.longitude.toString());
      } else {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted == PermissionStatus.granted) {
          print('excellent your are allowed');
        } else {
          SystemNavigator.pop();
        }
      }
      print('its enabled ');
    } else {
      _serviceEnabled = await location.requestService();
      if (_serviceEnabled == true) {
        _permissionGranted = await location.hasPermission();

        if (_permissionGranted == PermissionStatus.granted) {
          print('its granted second first');
        } else {
          _permissionGranted = await location.requestPermission();
          if (_permissionGranted == PermissionStatus.granted) {
            print('excellent you are allowed 2');
          } else {
            SystemNavigator.pop();
          }
        }
        print('start_tracking 2');
      } else {
        SystemNavigator.pop();
      }
    }
  }
}
