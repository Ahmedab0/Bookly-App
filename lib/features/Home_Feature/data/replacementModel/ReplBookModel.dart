import 'Items.dart';

class ReplBookModel {
  ReplBookModel({
      this.kind, 
      this.totalItems, 
      this.items,});

  ReplBookModel.fromJson(dynamic json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? kind;
  int? totalItems;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['totalItems'] = totalItems;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}