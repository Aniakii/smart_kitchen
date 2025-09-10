import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/core/routing/app_router.dart';
import '../core/l10n/app_localizations.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, router) => AppBar(
        title: Center(child: Text(AppLocalizations.of(context)!.appName)),
      ),
      routes: [KitchenRoute(), RecipesRoute()],
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: AppLocalizations.of(context)!.kitchenTitle,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: AppLocalizations.of(context)!.recipesTitle,
          ),
        ],
      ),
    );
  }
}
