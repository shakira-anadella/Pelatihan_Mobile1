import 'package:flutter/material.dart';
import '../models/fact.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fakta Unik Dunia")),
      body: ListView.builder(
        itemCount: facts.length,
        itemBuilder: (context, index) {
          final fact = facts[index];
          return Card(
            child: ListTile(
              title: Text(fact.title),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(fact: fact),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
