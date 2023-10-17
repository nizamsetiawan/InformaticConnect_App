import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:informaticconnect_app/pages/Home%20&%20Action%20Menu/favorites.dart';
import 'package:informaticconnect_app/provider/favorite_prov.dart';
import 'package:provider/provider.dart';

class favoriteScreen extends StatelessWidget {
  const favoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(50).toList();
    final provider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
      ),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index){
          final word = words[index];
          return ListTile(
          title: Text(word),
          trailing: IconButton(
            onPressed: () {
              provider.toggleFavorite(word);
            },
            icon: provider.isExist(word)
            ? const Icon(Icons.favorite, color: Colors.red)
            : const Icon(Icons.favorite_border),
          ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:(){
          final route = MaterialPageRoute(
            builder:(context) => const FavoritesPage());
          Navigator.push(context, route);
        },
        label: const Text('Favorites'),
    ),
    );
  }
}