import 'package:flutter/material.dart';
import 'package:flutter_webview_project/webviewFlutter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("WebView Example"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.deepPurple,
          child: Text("Visit the Webpage",
          style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => WebViewFlutter(
                      websiteName: "AllTechSavvy.com",
                      websiteUrl: "https://alltechsavvy.com",
                    )));
          },
        ),
      ),
    );
  }
}
