
import 'package:flutter/material.dart';

import 'layout-builder/layout_builder_responsive_design.dart';
import 'media-query/media_query_responsive_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      routes: {
        "MQRD":(context)=> const MediaQueryResponsiveDesign(),
        "LBRD":(context)=> const LayoutBuilderResponsiveDesign(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: (){
                  Navigator.pushNamed(context, "MQRD");
                },
                child: const Text("Responsive Design using Media Query"),
            ),
            const SizedBox(height: 25,),
            FilledButton(
              onPressed:(){
                Navigator.pushNamed(context, "LBRD");
              },
              child: const Text("Responsive Design using Layout Builder"),
            ),
          ],
        ),
      ),
    );
  }
}


