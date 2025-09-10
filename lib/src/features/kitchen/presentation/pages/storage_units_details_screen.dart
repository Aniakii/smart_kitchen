import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/entities/storage_unit.dart';
import '../../../products/presentation/pages/all_products_screen/all_products_screen.dart';
import '../../domain/entities/room.dart';

@RoutePage()
class StorageUnitsDetailsScreen extends StatefulWidget {
  const StorageUnitsDetailsScreen({
    required this.selectedRoom,
    required this.selectedStorageUnit,
    super.key,
  });

  final StorageUnit selectedStorageUnit;
  final Room selectedRoom;

  @override
  State<StorageUnitsDetailsScreen> createState() =>
      _StorageUnitsDetailsScreenState();
}

class _StorageUnitsDetailsScreenState extends State<StorageUnitsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.selectedStorageUnit.name)),
      body: AllProductsScreen(
        selectedRoom: widget.selectedRoom,
        selectedStorageUnit: widget.selectedStorageUnit,
      ),
    );
  }
}
