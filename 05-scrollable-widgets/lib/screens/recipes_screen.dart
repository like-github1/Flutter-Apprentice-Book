import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';

import '../components/components.dart';
class RecipesScreen extends StatelessWidget {
   RecipesScreen({super.key});
  final  mockservices= MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockservices.getRecipes(),
     // initialData: InitialData,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(snapshot.connectionState==ConnectionState.done){
          return RecipesGridView(recipes: snapshot.data,);

        }else{
return CircularProgressIndicator();
        }
    
      },
    );
  }
}