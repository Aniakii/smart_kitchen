import 'package:hive_ce/hive.dart';

part 'product_hive.g.dart';

@HiveType(typeId: 2)
class ProductHive extends HiveObject {
  ProductHive(
    this.id,
    this.name,
    this.category,
    this.amount,
    this.inputDate,
    this.expiryDate,
    this.roomId,
    this.storageUnitId,
  );

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String category;

  @HiveField(3)
  DateTime? inputDate;

  @HiveField(4)
  DateTime? expiryDate;

  @HiveField(5)
  int amount;

  @HiveField(6)
  int? roomId;

  @HiveField(7)
  int? storageUnitId;
}
