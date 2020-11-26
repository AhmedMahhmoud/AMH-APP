import 'package:flutter/material.dart';
import 'package:flutter_proj/views/ContactusScreen.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _launched;
  String phone = "";
  String _launchURL = "https://www.google.com";
  Future<void> _lunchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: false,
          forceWebView: false,
          headers: <String, String>{"header_key": "header_value"});
    } else {
      throw "Could not launch $url";
    }
  }

  Future<void> _lunchInAPP(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: true,
          forceWebView: true,
          headers: <String, String>{"header_key": "header_value"});
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RaisedButton(
              child: Text("Launch in browser"),
              onPressed: () {
                _lunchInBrowser(_launchURL);
              },
            ),
            RaisedButton(
              child: Text("Launch in app"),
              onPressed: () {
                _lunchInAPP(_launchURL);
              },
            ),RaisedButton(
              child: Text("contactus"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (Context) => ContactUsScreen() ));
              },
            )
          ],
        ),
      ),
    );
  }
}
