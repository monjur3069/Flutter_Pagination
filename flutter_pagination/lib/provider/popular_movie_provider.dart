import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../model/popular_movie_model.dart';



class PopularMovieProvider extends ChangeNotifier {
  PopularMovieModel? popularMovieModel;
  bool isLoading = false;
  int _currentPage = 1;
  int _totalPages = 8;
  int get totalPages => _totalPages;
  int get currentPage => _currentPage;
  set currentPage(int newValue) {
    _currentPage = newValue;
  }

  bool get hasDataLoaded => popularMovieModel != null;

  getAllData() {
    if (isLoading || _currentPage > _totalPages) return; // Prevent multiple simultaneous requests
    _getSearchData();
  }

  void _getSearchData() async {
    final uri = Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=1b11a9f6356e930cb7542b3606c403f9&language=en-US&page=$_currentPage');
    try {
      isLoading = true;
      final response = await get(uri);
      final map = jsonDecode(utf8.decode(response.bodyBytes));
      print(map);
      print(response.statusCode);
      print('$uri');
      if (response.statusCode == 200) {
        if (popularMovieModel != null) {
          // Append new page results to the existing results list
          final newResults = PopularMovieModel.fromJson(map).results;
          popularMovieModel!.results?.addAll(newResults ?? []);
        } else {
          popularMovieModel = PopularMovieModel.fromJson(map);
        }
        notifyListeners();
        _currentPage++;
      } else {
        print(map['message']);
      }
    } catch (error) {
      rethrow;
    }finally {
      isLoading = false;
    }
  }
}
