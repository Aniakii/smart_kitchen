import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/core/l10n/app_localizations.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_storage_units/all_storage_units_screen.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/all_products_screen/all_products_screen.dart';
import '../../domain/entities/room.dart';

@RoutePage()
class RoomDetailsScreen extends StatefulWidget {
  const RoomDetailsScreen({required this.selectedRoom, super.key});

  final Room selectedRoom;

  @override
  State<RoomDetailsScreen> createState() => _KitchenScreenState();
}

class _KitchenScreenState extends State<RoomDetailsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  static const _tabAnimationDuration = Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      initialIndex: 0,
      vsync: this,
      animationDuration: _tabAnimationDuration,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.selectedRoom.name),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: AppLocalizations.of(context)!.storageUnitsTitle),
            Tab(text: AppLocalizations.of(context)!.allProductsTitle),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AllStorageUnitsScreen(selectedRoom: widget.selectedRoom),
          AllProductsScreen(selectedRoom: widget.selectedRoom),
        ],
      ),
    );
  }
}
