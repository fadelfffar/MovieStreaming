import 'package:flutter/material.dart';
import 'package:moviezstreaming/widgets/ratestar.dart';

import 'widgets/movie_modal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
        body: Column(
          children: [
            const SizedBox(
              height: 28,
              width: 200,
            ),
            Row(
              children: [ 
                Padding(               
                  padding:  EdgeInsets.only(top: 12, left: 24, bottom: 4, right: 4), 
                  child: Column(
                    children: const [ 
                      Text("Moviez",
                      style: TextStyle (
                        fontSize: 30,
                        fontWeight: FontWeight.bold, ),
                      ),
                      Text("Watch much easier",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      ), 
                    ],
                  ),
                ),
                Expanded(child: IconButton(onPressed: () {
                  Navigator.pushNamed(context, '/search');
                }, icon: const Icon(Icons.search) )
                )
                ]
              ),
              const SizedBox(
                height: 20,
                width: 100,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                // TODO: add ContrainedBox
                height: 279,
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24
                ), 
                child: Column(
                  children: [
                     ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                       child: const Image(
                        image: AssetImage("images/featured_cover.jpg"),
                        fit: BoxFit.cover, 
                        width: 300, 
                        height: 200,
                        ),
                     ),
                    // const 
                    const SizedBox(
                      height: 20,
                      width: 100,
                    ), 
                    Row(
                      children:  [
                        Column( 
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 18,
                            ),
                            Text("John Wick 4", 
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Action, Crime"),
                        ]
                        ),
                        // const Image(image:  AssetImage("images/icon_star.jpg"))
                        const SizedBox(
                          height: 20,
                          width: 80,
                        ), 
                        const RateStar(rateCount: 4)
                          ]
                        ), 
                      ],
                    ), 
                ),
                const SizedBox(
                  height: 14,
                  width: 200,
                ),
                const Text("From Disney",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Azenir",
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
                ), 
                const SizedBox( height: 20,),
                const MovieModal(imageUrl: "images/image6.jpg", textTitle: "Mulan Session", textGenre: "History, War", rateCount: 3,),
                const MovieModal(imageUrl: "images/image7.jpg", textTitle: "Beauty & Beast", textGenre: "Sci-Fiction", rateCount: 5,)           
          ]
        )
      );
  }
}