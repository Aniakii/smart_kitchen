import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_rooms/all_rooms_screen.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/all_products_screen/all_products_screen.dart';
import '../../../../core/l10n/app_localizations.dart';

@RoutePage()
class KitchenScreen extends StatefulWidget {
  const KitchenScreen({super.key});

  @override
  State<KitchenScreen> createState() => _KitchenScreenState();
}

class _KitchenScreenState extends State<KitchenScreen>
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
        toolbarHeight: 0,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: AppLocalizations.of(context)!.roomsTitle),
            Tab(text: AppLocalizations.of(context)!.allProductsTitle),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [AllRoomsScreen(), AllProductsScreen()],
      ),
    );
  }
}
