import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/constant.dart';

void main()  async{
  await Hive.initFlutter();

await Hive.openBox(kNotesBox);
  
  runApp(DevicePreview(

    enabled: !kReleaseMode,
      builder: (context) => const NotesApp()));
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,
        fontFamily: 'Poppins',
        ),
        home: const NotesView(),
      
      ),
    );
  }
}
