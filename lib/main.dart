import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/add_notes/add_notes_cubits.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/constant.dart';

void main()  async{
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserve();

await Hive.openBox(kNotesBox);
Hive.registerAdapter(NoteModelAdapter());
  
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

      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=> AddNoteCubit()),
        ],
        child: MaterialApp(
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark,
          fontFamily: 'Poppins',
          ),
          home: const NotesView(),
        
        ),
      ),
    );
  }
}
