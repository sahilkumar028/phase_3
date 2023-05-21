import 'package:flutter/material.dart';

class MovieTicket extends StatelessWidget {
  MovieTicket({Key? key}) : super(key: key);

  List movieName = ['RRR', 'Pushpa', 'KGF', 'Fast X', 'Harry Potter'];
  List movieImage = [
    'images/rrr.jpg',
    'images/pushpa.jpg',
    'images/kgf.webp',
    'images/fastX.jpg',
    'images/harrypotter.jpg'
  ];

  Widget listDesign(int index) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage(movieImage[index]),fit: BoxFit.fill, opacity: 0.3),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Colors.deepPurple,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(movieName[index], style: const TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold,
          ),),
          const Text("\$500", style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w600,
          ),),
          const Text('21th May, 2023', style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w600,
          ),),
          const Text("Seat No. G23, H10", style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w600,
          ),),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Ticket"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) => listDesign(index),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: 5,
      ),
    );
  }
}
