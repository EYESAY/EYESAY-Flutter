import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/screens/loading.dart';
import './app/module/base_structure.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1600, 2560),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // 라우트 설정
        initialRoute: '/',
        routes: {
          '/': (context) => BaseStructureScreen(),
          // '/base': (context) => BaseStructureScreen(), // 추가된 라우트
        },
      ),
    );
  }
}
