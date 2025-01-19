import 'package:ecom_firebase/domain/product/entities/color.dart';

class ProductColorModel {

  final String title;
  final String rgb;

  ProductColorModel({
    required this.title,
    required this.rgb,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'hexCode': rgb,
    };
  }

  factory ProductColorModel.fromMap(Map<String, dynamic> map) {
    return ProductColorModel(
      title: map['title'] as String,
      rgb: map['hexCode'] as String,
    );
  }

}

extension ProductColorXModel on ProductColorModel {
  ProductColorEntity toEntity() {
    return ProductColorEntity(
        title: title,
        rgb: rgb
    );
  }
}

extension ProductColorXEntity on ProductColorEntity {
  ProductColorModel fromEntity() {
    return ProductColorModel(
        title: title,
        rgb: rgb
    );
  }
}
