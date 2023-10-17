import 'package:flutter/material.dart';
import 'package:informaticconnect_app/provider/favorite_prov.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final words = provider.words;
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites Mentor'),
      ),
      body:ListView.builder(
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
    );
  }
}