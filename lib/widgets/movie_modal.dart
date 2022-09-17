import 'package:flutter/material.dart';
import 'package:moviezstreaming/widgets/ratestar.dart';

class MovieModal extends StatelessWidget {
  const MovieModal({Key? key, required this.imageUrl, required this.textTitle, required this.textGenre, required this.rateCount}) : super(key: key);

  final String imageUrl;
  final String textTitle;
  final String textGenre;
  final int rateCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: 
        [
          const SizedBox(
                width: 20,
                height: 60,
                ),
              ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image(image: AssetImage(imageUrl ),
              )),
              const SizedBox(width: 20,),
            Column(children: [
            Text(textTitle, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Text(textGenre, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
            RateStar(rateCount: rateCount) 
            ]
          )
        ]
      ),
    );
  }
}