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
          controller: controller.refreshController,
          enablePullDown: true,
          enablePullUp: false,
          onRefresh: ()async{
              await controller.onRefresh();
            },
          child: ListView.builder(
            controller: controller.scrollController,
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

}
