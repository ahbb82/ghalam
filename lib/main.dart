import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:univercity/UI/Veiw/Login/register.dart';
import 'package:univercity/UI/Veiw/Login/splash.dart';
import 'package:univercity/UI/Veiw/Reading/reading_story.dart';
import 'package:univercity/UI/Veiw/Reading/topic_lists.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));





    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'IRANSans',
        primaryColor: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child!),
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      textDirection: TextDirection.rtl,
      initialRoute: '/',
      // onUnknownRoute: (settings){
      //   List<String> pathComponents = settings.name!.split('/');
      //   if(pathComponents[1]=='login')
      //     return MaterialPageRoute(builder: (context)=>Login());
      //   else if(pathComponents[1]=='category'){
      //     var category=ServiceController.categories[int.parse(pathComponents[2])]!;
      //     if(category!=null)
      //     return MaterialPageRoute(builder: (context)=>SubList(category));
      //   }
      // },
      // onGenerateRoute: (route){
      //
      //   print('routePrams>>>>${route.name} ${route.arguments}');
      //   Navigator.push(context, MaterialPageRoute(builder: (builder)=>Categories()));
      //   print('2');
      // },
      routes: {
        '/':(context)=>Splash(),
      },
    );
  }
}

