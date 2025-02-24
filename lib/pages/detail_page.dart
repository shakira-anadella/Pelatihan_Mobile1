import 'package:flutter/material.dart';
import '../models/fact.dart';

class DetailPage extends StatelessWidget {
  final Fact fact;

  DetailPage({required this.fact});

  final Map<String, String> questionsAndAnswers = {
    "Apa yang membuat fakta ini unik?": "Fakta ini unik karena memberikan wawasan yang jarang diketahui banyak orang.",
    "Bagaimana fakta ini ditemukan?": "Fakta ini ditemukan berdasarkan penelitian dan studi dari para ahli.",
    "Apakah fakta ini memiliki dampak dalam kehidupan sehari-hari?": "Beberapa fakta dapat memengaruhi cara kita memahami dunia di sekitar kita.",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(fact.title)),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              fact.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),

            Divider(color: Colors.grey),
            SizedBox(height: 10),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fact.description,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20),

                    Text(
                      "Q & A (Pertanyaan & Jawaban)",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(height: 10),

                    Column(
                      children: questionsAndAnswers.entries.map((entry) {
                        return Card(
                          elevation: 2,
                          child: ExpansionTile(
                            title: Text(
                              entry.key,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  entry.value,
                                  style: TextStyle(fontSize: 16, color: Colors.black87),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
