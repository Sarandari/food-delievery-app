import 'package:flutter/material.dart';
import 'package:food_delievery_app/features/home/presentation/components/my_drawer_tile.dart';

import '../../../items/presentation/page/Items_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Icon(Icons.person, size: 80,),
              ),

              //divider line
              Divider(color: Colors.grey),
              //home tile
              MyDrawerTile(
                  title: 'H O M E ',
                  icon: Icons.home,
                  onTap: (){
                    Navigator.of(context).pop();
                  },
              ),
              //list tile
              // MyDrawerTile(
              //   title: 'I T E M S ',
              //   icon: Icons.description,
              //   onTap: (){
              //     Navigator.of(context).pop();
              //     Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => ItemsPage(),)
              //     );
              //   },
              // ),

              //search tile
              MyDrawerTile(
                title: 'S E A R C H ',
                icon: Icons.search,
                onTap: (){},
              ),

            ],
          ),
        ),
      ),
    );
  }
}
