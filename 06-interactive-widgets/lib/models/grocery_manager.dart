import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';

class GroceryManager extends ChangeNotifier {
  final _groceryItems = <GroceryItem>[];
//getter method to get  _groceryItems
  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);

  //deleting Items from GroceryItems

  void deleteItems(int index) {
    _groceryItems.removeAt(index);
    notifyListeners();
  }

  // Add Items to Grocery Items to Grocery List of Items
  void AddGroceryItems(GroceryItem Items) {
    _groceryItems.add(Items);
    notifyListeners();
  }

  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
    notifyListeners();
  }

  void completeItem(int index, bool Change) {
    final Item = _groceryItems[index];
    _groceryItems[index] = Item.copyWith(isComplete: Change);
    notifyListeners();
  }
}
