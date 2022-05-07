
import 'package:download_file_app/my_download.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';


const debug = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*
  the WidgetFlutterBinding is used to interact with the Flutter engine.
  FlutterDownloader.initialize() needs to call native code ,
  and since the plugin needs to use platform channels to call the native code,
   which is done asynchronously therefore you have to call ensureInitialized()
    to make sure that you have an instance of the WidgetsBinding.
   */
  await FlutterDownloader.initialize(
      debug: debug // optional: set false to disable printing logs to console
       );
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;
    return  MaterialApp(
      title: 'Flutter Demo',
      theme:   ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyDownload(
        platform: platform,
      ),
    );
  }
}

