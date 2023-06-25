import 'package:flutter/material.dart';
import 'package:flutter_pagination/provider/popular_movie_provider.dart';
import 'package:flutter_pagination/ui/pages/popular_movie_page.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => PopularMovieProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  PopularMoviePage(),
    );
  }
}
