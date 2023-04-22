import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
                aspectRatio: 1 / 1,
                child: Image(
                    image:  AssetImage('assets/fooderlich_assets/empty_list.png'))),
            const SizedBox(height: 8.0),
            const Text(
              'No Groceries',
              style: TextStyle(fontSize: 21.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              child: Text('Broese recipes'),
              color: Colors.green,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              // if you want to access the State
              // Object without State changes use Provider.of(context)
              onPressed: (){
                Provider.of<TabManager>(context, listen: false).goToRecipes();
              })
          ],
        ),
      ),
    );
  }
}
