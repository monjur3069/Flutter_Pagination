import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../model/product_shop_model.dart';

class ProductShopController extends GetxController {
  ProductShopModel? productShopModel;
  bool isLoading = false;
  int _currentPage = 1;
  final int _totalPages = 93;
  int get totalPages => _totalPages;
  int get currentPage => _currentPage;
  set currentPage(int newValue) {
    _currentPage = newValue;
  }

  bool get hasDataLoaded => productShopModel != null;

  getAllData() {
    if (isLoading || _currentPage > _totalPages) return; // Prevent multiple simultaneous requests

    _getShopData();
  }




  void _getShopData() async {
    final uri = Uri.parse(
        'https://woodmachinery.com.bd/api/v1/product/shop?page=$_currentPage');
    try {
      isLoading = true;
      final response = await get(uri);
      final map = jsonDecode(utf8.decode(response.bodyBytes))['product_shop'];
      print(map);
      print(response.statusCode);
      print('$uri');
      if (response.statusCode == 200) {
        if (productShopModel != null) {
          // Append new page results to the existing results list
          final newResults = ProductShopModel.fromJson(map).data;
          productShopModel?.data?.addAll(newResults ?? []);
        } else {
          productShopModel = ProductShopModel.fromJson(map);
        }
        update();
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
