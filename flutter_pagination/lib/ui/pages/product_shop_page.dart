import 'package:flutter/material.dart';
import 'package:flutter_pagination/controller/product_shop_controller_getBuilder.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ProductShopPage extends StatefulWidget {
  @override
  State<ProductShopPage> createState() => _ProductShopPageState();
}

class _ProductShopPageState extends State<ProductShopPage> {
  ProductShopController controller = Get.put(ProductShopController());
  bool isFirst = true;

  late ScrollController _scrollController;
  RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _refreshController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      // Reached the end of the current page, fetch next page data
      controller.getAllData();
    }
  }

  @override
  void didChangeDependencies() async {
    if (isFirst) {
      controller.getAllData();
      isFirst = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pagination with Getx GetBuilder')),
      ),
      body: GetBuilder<ProductShopController>(
        init: controller,
        builder: (context) =>
        controller.hasDataLoaded
            ? SmartRefresher(
          controller: _refreshController,
          enablePullDown: true,
          enablePullUp: false,
          onRefresh: _onRefresh,
          child: ListView.builder(
            controller: _scrollController,
            itemCount:
            controller.productShopModel!.data!.length + 1, // +1 for the progress indicator
            itemBuilder: (context, index) {
              if (index < controller.productShopModel!.data!.length) {
                return ListTile(
                  title: Text(
                      controller.productShopModel!.data![index].nameEn!),
                );
              }else {
                print(index);
                print(controller.productShopModel!.data!.length);
                // Show the progress indicator at the bottom
                return index == 160 ? Container():Center(child: CircularProgressIndicator());
              }
            },
          ),
        )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }

  void _onRefresh() async {
    controller.currentPage = 1;
    await controller.getAllData();
    _refreshController.refreshCompleted();
    if (controller.currentPage == controller.totalPages) {
      _refreshController.loadNoData();
    }
  }
}
