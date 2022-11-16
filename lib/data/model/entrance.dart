import 'package:second_practical/domain/entity/supply_entity.dart';

class Supply extends SupplyEntity {
  Supply(
      {required super.date, required super.user_id, required super.product_id});

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'user_id': user_id,
      'product_id': product_id,
    };
  }

  factory Supply.toFromMap(Map<String, dynamic> json) {
    return Supply(
      date: json['date'],
      user_id: json['user_id'],
      product_id: json['product_id'],
    );
  }
}
