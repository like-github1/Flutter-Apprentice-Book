import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';

import '../components/components.dart';
class ExploreScreen extends StatelessWidget {
   ExploreScreen({Key?key}):super(key: key);
   final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
     // initialData: InitialData,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(snapshot.connectionState==ConnectionState.done){
        final recipes = snapshot.data.todayRecipes;
        final post =snapshot.data.friendPosts;
   
         return ListView(
          children: [
            TodayRecipeListView(recipes: recipes),
            SizedBox(height: 16,),
           FriendPostListView(friendspost: post,)
          ],
         );
        }else{
return const Center(child: CircularProgressIndicator());        }
      },
    );
  }
}