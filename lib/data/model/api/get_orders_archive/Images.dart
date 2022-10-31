import 'ProductImage.dart';

class Images {
  Images({
      this.hasThumb, 
      this.isAlreadyPrepaid, 
      this.isDoneManually, 
      this.isPaid, 
      this.isRejected, 
      this.prepaidCount, 
      this.rejectJpg, 
      this.rejectPng, 
      this.compositedImage, 
      this.designerImage, 
      this.designerImagePNG, 
      this.productImage, 
      this.userImage, 
      this.platForm, 
      this.userScreenShot, 
      this.aboId, 
      this.aboType, 
      this.aiCompositedImage, 
      this.aiImage,});

  Images.fromJson(dynamic json) {
    hasThumb = json['hasThumb'];
    isAlreadyPrepaid = json['isAlreadyPrepaid'];
    isDoneManually = json['isDoneManually'];
    isPaid = json['isPaid'];
    isRejected = json['isRejected'];
    prepaidCount = json['prepaidCount'];
    rejectJpg = json['rejectJpg'];
    rejectPng = json['rejectPng'];
    compositedImage = json['compositedImage'];
    designerImage = json['designerImage'];
    designerImagePNG = json['designerImagePNG'];
    productImage = json['productImage'] != null ? ProductImage.fromJson(json['productImage']) : null;
    userImage = json['userImage'];
    platForm = json['platForm'];
    userScreenShot = json['userScreenShot'];
    aboId = json['aboId'];
    aboType = json['aboType'];
    aiCompositedImage = json['aiCompositedImage'];
    aiImage = json['aiImage'];
  }
  bool? hasThumb;
  bool? isAlreadyPrepaid;
  bool? isDoneManually;
  bool? isPaid;
  bool? isRejected;
  int? prepaidCount;
  bool? rejectJpg;
  bool? rejectPng;
  String? compositedImage;
  String? designerImage;
  String? designerImagePNG;
  ProductImage? productImage;
  String? userImage;
  String? platForm;
  String? userScreenShot;
  String? aboId;
  String? aboType;
  String? aiCompositedImage;
  String? aiImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hasThumb'] = hasThumb;
    map['isAlreadyPrepaid'] = isAlreadyPrepaid;
    map['isDoneManually'] = isDoneManually;
    map['isPaid'] = isPaid;
    map['isRejected'] = isRejected;
    map['prepaidCount'] = prepaidCount;
    map['rejectJpg'] = rejectJpg;
    map['rejectPng'] = rejectPng;
    map['compositedImage'] = compositedImage;
    map['designerImage'] = designerImage;
    map['designerImagePNG'] = designerImagePNG;
    if (productImage != null) {
      map['productImage'] = productImage!.toJson();
    }
    map['userImage'] = userImage;
    map['platForm'] = platForm;
    map['userScreenShot'] = userScreenShot;
    map['aboId'] = aboId;
    map['aboType'] = aboType;
    map['aiCompositedImage'] = aiCompositedImage;
    map['aiImage'] = aiImage;
    return map;
  }
}