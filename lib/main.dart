import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (_) => MyHomePage()      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

   final webviewPlugin = FlutterWebviewPlugin();
 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  
  @override
  void initState(){
    super.initState();
    flutterWebviewPlugin.close();
    flutterWebviewPlugin.onUrlChanged.listen((String onData){
      debugPrint("new URL: $onData");
    });

  }

  @override
  Widget build(BuildContext context) {
    

    flutterWebviewPlugin.onUrlChanged.listen((String url) {

    });
    return WebviewScaffold(
              url: "https://redirect-tests.firebaseapp.com/",
              appBar: new AppBar(
                title: new Text("Widget webview"),
              ),
            );
  }
}
