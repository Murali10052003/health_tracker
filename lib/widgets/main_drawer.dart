import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_tracker/screens/starting_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.tertiary.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [

                Icon(Icons.self_improvement,
                size: 48,
                color: Theme.of(context).colorScheme.onSecondaryContainer,),
                const SizedBox(width: 18,),
                Text('Self care',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                ),
                )
              ],
            )
          ),
          ListTile(
            leading: Icon(Icons.logout,
              size: 48,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title:  Text('Logout',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.tertiary,
                fontSize: 24
              ),
            ),

            onTap: () {FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
                  (ctx) => const StartingPage()
              ),);

              },
          )

        ],
      ),
    );
  }
}
