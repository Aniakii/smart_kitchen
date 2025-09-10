import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/core/routing/app_router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, router) =>
          AppBar(title: Center(child: Text("Smart Kitchen"))),
      routes: [KitchenRoute(), RecipesRoute()],
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Kitchen'),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Recipes',
          ),
        ],
      ),
    );
  }
}
