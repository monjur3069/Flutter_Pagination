// class ProductShopModel {
//   ProductShop? productShop;
//
//   ProductShopModel({this.productShop});
//
//   ProductShopModel.fromJson(Map<String, dynamic> json) {
//     productShop = json['product_shop'] != null
//         ? new ProductShop.fromJson(json['product_shop'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.productShop != null) {
//       data['product_shop'] = this.productShop!.toJson();
//     }
//     return data;
//   }
// }
//
// class ProductShop {
//   int? currentPage;
//   List<Data>? data;
//   String? firstPageUrl;
//   int? from;
//   int? lastPage;
//   String? lastPageUrl;
//   List<Links>? links;
//   String? nextPageUrl;
//   String? path;
//   int? perPage;
//   String? prevPageUrl;
//   int? to;
//   int? total;
//
//   ProductShop(
//       {this.currentPage,
//         this.data,
//         this.firstPageUrl,
//         this.from,
//         this.lastPage,
//         this.lastPageUrl,
//         this.links,
//         this.nextPageUrl,
//         this.path,
//         this.perPage,
//         this.prevPageUrl,
//         this.to,
//         this.total});
//
//   ProductShop.fromJson(Map<String, dynamic> json) {
//     currentPage = json['current_page'] ?? 0;
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//     firstPageUrl = json['first_page_url'] ?? '';
//     from = json['from'] ?? 0;
//     lastPage = json['last_page'] ?? 0;
//     lastPageUrl = json['last_page_url'] ?? '';
//     if (json['links'] != null) {
//       links = <Links>[];
//       json['links'].forEach((v) {
//         links!.add(new Links.fromJson(v));
//       });
//     }
//     nextPageUrl = json['next_page_url'] ?? '';
//     path = json['path'] ?? '';
//     perPage = json['per_page'] ?? 0;
//     prevPageUrl = json['prev_page_url'] ?? '';
//     to = json['to'] ?? 0;
//     total = json['total'] ?? 0;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['current_page'] = this.currentPage;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     data['first_page_url'] = this.firstPageUrl;
//     data['from'] = this.from;
//     data['last_page'] = this.lastPage;
//     data['last_page_url'] = this.lastPageUrl;
//     if (this.links != null) {
//       data['links'] = this.links!.map((v) => v.toJson()).toList();
//     }
//     data['next_page_url'] = this.nextPageUrl;
//     data['path'] = this.path;
//     data['per_page'] = this.perPage;
//     data['prev_page_url'] = this.prevPageUrl;
//     data['to'] = this.to;
//     data['total'] = this.total;
//     return data;
//   }
// }
//
// class Data {
//   int? id;
//   int? brandId;
//   int? categoryId;
//   int? subCategoryId;
//   int? subSubCategoryId;
//   String? tags;
//   String? url;
//   int? vendorId;
//   int? supplierId;
//   int? unitId;
//   int? campaingId;
//   String? nameEn;
//   String? nameBn;
//   String? slug;
//   String? productCode;
//   String? modelNumber;
//   String? unitWeight;
//   int? purchasePrice;
//   String? purchaseCode;
//   int? isWholesell;
//   int? wholesellPrice;
//   int? wholesellMinimumQty;
//   int? regularPrice;
//   int? bodyRate;
//   int? finishingRate;
//   int? discountPrice;
//   int? discountType;
//   int? minimumBuyQty;
//   int? stockQty;
//   String? productThumbnail;
//   String? menuFactureImage;
//   String? descriptionEn;
//   String? descriptionBn;
//   int? attributes;
//   int? isVarient;
//   String? variantName;
//   int? attributeValues;
//   int? variations;
//   int? isFeatured;
//   int? isDeals;
//   int? isDealer;
//   int? status;
//   int? isApproved;
//   int? isDigital;
//   int? approved;
//   int? createdBy;
//   String? createdAt;
//   String? updatedAt;
//   String? wholeSellDisType;
//   String? wholeSellDis;
//
//   Data(
//       {this.id,
//         this.brandId,
//         this.categoryId,
//         this.subCategoryId,
//         this.subSubCategoryId,
//         this.tags,
//         this.url,
//         this.vendorId,
//         this.supplierId,
//         this.unitId,
//         this.campaingId,
//         this.nameEn,
//         this.nameBn,
//         this.slug,
//         this.productCode,
//         this.modelNumber,
//         this.unitWeight,
//         this.purchasePrice,
//         this.purchaseCode,
//         this.isWholesell,
//         this.wholesellPrice,
//         this.wholesellMinimumQty,
//         this.regularPrice,
//         this.bodyRate,
//         this.finishingRate,
//         this.discountPrice,
//         this.discountType,
//         this.minimumBuyQty,
//         this.stockQty,
//         this.productThumbnail,
//         this.menuFactureImage,
//         this.descriptionEn,
//         this.descriptionBn,
//         this.attributes,
//         this.isVarient,
//         this.variantName,
//         this.attributeValues,
//         this.variations,
//         this.isFeatured,
//         this.isDeals,
//         this.isDealer,
//         this.status,
//         this.isApproved,
//         this.isDigital,
//         this.approved,
//         this.createdBy,
//         this.createdAt,
//         this.updatedAt,
//         this.wholeSellDisType,
//         this.wholeSellDis});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'] ?? 0;
//     brandId = json['brand_id'] ?? 0;
//     categoryId = json['category_id']  ?? 0;
//     subCategoryId = json['sub_category_id']  ?? 0;
//     subSubCategoryId = json['sub_sub_category_id']  ?? 0;
//     tags = json['tags'] ?? "";
//     url = json['url']  ?? "";
//     vendorId = json['vendor_id'] ?? 0;
//     supplierId = json['supplier_id'] ?? 0;
//     unitId = json['unit_id']  ?? 0;
//     campaingId = json['campaing_id']  ?? 0;
//     nameEn = json['name_en']  ?? "";
//     nameBn = json['name_bn']  ?? "";
//     slug = json['slug']  ?? "";
//     productCode = json['product_code']  ?? "";
//     modelNumber = json['model_number']  ?? "";
//     unitWeight = json['unit_weight']  ?? "";
//     purchasePrice = json['purchase_price']  ?? 0;
//     purchaseCode = json['purchase_code']  ?? "";
//     isWholesell = json['is_wholesell']  ?? 0;
//     wholesellPrice = json['wholesell_price'] ?? 0;
//     wholesellMinimumQty = json['wholesell_minimum_qty']  ?? 0;
//     regularPrice = json['regular_price']  ?? 0;
//     bodyRate = json['body_rate']  ?? 0;
//     finishingRate = json['finishing_rate']  ?? 0;
//     discountPrice = json['discount_price'] ?? 0;
//     discountType = json['discount_type'] ?? 0;
//     minimumBuyQty = json['minimum_buy_qty'] ?? 0;
//     stockQty = json['stock_qty'] ?? 0;
//     productThumbnail = json['product_thumbnail'] ?? "";
//     menuFactureImage = json['menu_facture_image'] ?? "";
//     descriptionEn = json['description_en'] ?? "";
//     descriptionBn = json['description_bn'] ?? "";
//     attributes = json['attributes']  ?? "";
//     isVarient = json['is_varient']  ?? 0;
//     variantName = json['variant_name'] ?? "";
//     attributeValues = json['attribute_values'] ?? "";
//     variations = json['variations'] ?? "";
//     isFeatured = json['is_featured'] ?? 0;
//     isDeals = json['is_deals']  ?? 0;
//     isDealer = json['is_dealer'] ?? 0;
//     status = json['status'] ?? 0;
//     isApproved = json['is_approved'] ?? 0;
//     isDigital = json['is_digital'] ?? 0;
//     approved = json['approved'] ?? 0;
//     createdBy = json['created_by'] ?? 0;
//     createdAt = json['created_at'] ?? "";
//     updatedAt = json['updated_at'] ?? '';
//     wholeSellDisType = json['whole_sell_dis_type'] ?? '';
//     wholeSellDis = json['whole_sell_dis'] ?? '0';
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['brand_id'] = this.brandId;
//     data['category_id'] = this.categoryId;
//     data['sub_category_id'] = this.subCategoryId;
//     data['sub_sub_category_id'] = this.subSubCategoryId;
//     data['tags'] = this.tags;
//     data['url'] = this.url;
//     data['vendor_id'] = this.vendorId;
//     data['supplier_id'] = this.supplierId;
//     data['unit_id'] = this.unitId;
//     data['campaing_id'] = this.campaingId;
//     data['name_en'] = this.nameEn;
//     data['name_bn'] = this.nameBn;
//     data['slug'] = this.slug;
//     data['product_code'] = this.productCode;
//     data['model_number'] = this.modelNumber;
//     data['unit_weight'] = this.unitWeight;
//     data['purchase_price'] = this.purchasePrice;
//     data['purchase_code'] = this.purchaseCode;
//     data['is_wholesell'] = this.isWholesell;
//     data['wholesell_price'] = this.wholesellPrice;
//     data['wholesell_minimum_qty'] = this.wholesellMinimumQty;
//     data['regular_price'] = this.regularPrice;
//     data['body_rate'] = this.bodyRate;
//     data['finishing_rate'] = this.finishingRate;
//     data['discount_price'] = this.discountPrice;
//     data['discount_type'] = this.discountType;
//     data['minimum_buy_qty'] = this.minimumBuyQty;
//     data['stock_qty'] = this.stockQty;
//     data['product_thumbnail'] = this.productThumbnail;
//     data['menu_facture_image'] = this.menuFactureImage;
//     data['description_en'] = this.descriptionEn;
//     data['description_bn'] = this.descriptionBn;
//     data['attributes'] = this.attributes;
//     data['is_varient'] = this.isVarient;
//     data['variant_name'] = this.variantName;
//     data['attribute_values'] = this.attributeValues;
//     data['variations'] = this.variations;
//     data['is_featured'] = this.isFeatured;
//     data['is_deals'] = this.isDeals;
//     data['is_dealer'] = this.isDealer;
//     data['status'] = this.status;
//     data['is_approved'] = this.isApproved;
//     data['is_digital'] = this.isDigital;
//     data['approved'] = this.approved;
//     data['created_by'] = this.createdBy;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['whole_sell_dis_type'] = this.wholeSellDisType;
//     data['whole_sell_dis'] = this.wholeSellDis;
//     return data;
//   }
// }
//
// class Links {
//   String? url;
//   String? label;
//   bool? active;
//
//   Links({this.url, this.label, this.active});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     label = json['label'];
//     active = json['active'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['url'] = this.url;
//     data['label'] = this.label;
//     data['active'] = this.active;
//     return data;
//   }
// }

class ProductShopModel {
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  ProductShopModel(
      {this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.links,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  ProductShopModel.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'] ?? 0;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }
}

class Data {
  int? id;
  int? brandId;
  int? categoryId;
  dynamic subCategoryId;
  dynamic subSubCategoryId;
  String? tags;
  dynamic url;
  int? vendorId;
  int? supplierId;
  int? unitId;
  dynamic campaingId;
  String? nameEn;
  String? nameBn;
  String? slug;
  String? productCode;
  String? modelNumber;
  String? unitWeight;
  int? purchasePrice;
  String? purchaseCode;
  int? isWholesell;
  int? wholesellPrice;
  int? wholesellMinimumQty;
  int? regularPrice;
  int? bodyRate;
  int? finishingRate;
  int? discountPrice;
  int? discountType;
  int? minimumBuyQty;
  int? stockQty;
  String? productThumbnail;
  String? menuFactureImage;
  String? descriptionEn;
  String? descriptionBn;
  String? attributes;
  int? isVarient;
  String? variantName;
  String? attributeValues;
  dynamic variations;
  int? isFeatured;
  int? isDeals;
  int? isDealer;
  int? status;
  int? isApproved;
  int? isDigital;
  int? approved;
  int? createdBy;
  String? createdAt;
  String? updatedAt;
  String? wholeSellDisType;
  String? wholeSellDis;

  Data(
      {this.id,
        this.brandId,
        this.categoryId,
        this.subCategoryId,
        this.subSubCategoryId,
        this.tags,
        this.url,
        this.vendorId,
        this.supplierId,
        this.unitId,
        this.campaingId,
        this.nameEn,
        this.nameBn,
        this.slug,
        this.productCode,
        this.modelNumber,
        this.unitWeight,
        this.purchasePrice,
        this.purchaseCode,
        this.isWholesell,
        this.wholesellPrice,
        this.wholesellMinimumQty,
        this.regularPrice,
        this.bodyRate,
        this.finishingRate,
        this.discountPrice,
        this.discountType,
        this.minimumBuyQty,
        this.stockQty,
        this.productThumbnail,
        this.menuFactureImage,
        this.descriptionEn,
        this.descriptionBn,
        this.attributes,
        this.isVarient,
        this.variantName,
        this.attributeValues,
        this.variations,
        this.isFeatured,
        this.isDeals,
        this.isDealer,
        this.status,
        this.isApproved,
        this.isDigital,
        this.approved,
        this.createdBy,
        this.createdAt,
        this.updatedAt,
        this.wholeSellDisType,
        this.wholeSellDis});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brandId = json['brand_id'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    subSubCategoryId = json['sub_sub_category_id'];
    tags = json['tags'];
    url = json['url'];
    vendorId = json['vendor_id'];
    supplierId = json['supplier_id'];
    unitId = json['unit_id'];
    campaingId = json['campaing_id'];
    nameEn = json['name_en'];
    nameBn = json['name_bn'];
    slug = json['slug'];
    productCode = json['product_code'];
    modelNumber = json['model_number'];
    unitWeight = json['unit_weight'];
    purchasePrice = json['purchase_price'];
    purchaseCode = json['purchase_code'];
    isWholesell = json['is_wholesell'];
    wholesellPrice = json['wholesell_price'];
    wholesellMinimumQty = json['wholesell_minimum_qty'];
    regularPrice = json['regular_price'];
    bodyRate = json['body_rate'];
    finishingRate = json['finishing_rate'];
    discountPrice = json['discount_price'];
    discountType = json['discount_type'];
    minimumBuyQty = json['minimum_buy_qty'];
    stockQty = json['stock_qty'];
    productThumbnail = json['product_thumbnail'];
    menuFactureImage = json['menu_facture_image'];
    descriptionEn = json['description_en'];
    descriptionBn = json['description_bn'];
    attributes = json['attributes'];
    isVarient = json['is_varient'];
    variantName = json['variant_name'];
    attributeValues = json['attribute_values'];
    variations = json['variations'];
    isFeatured = json['is_featured'];
    isDeals = json['is_deals'];
    isDealer = json['is_dealer'];
    status = json['status'];
    isApproved = json['is_approved'];
    isDigital = json['is_digital'];
    approved = json['approved'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    wholeSellDisType = json['whole_sell_dis_type'];
    wholeSellDis = json['whole_sell_dis'];
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }
}
