import 'package:flutter/material.dart';
import 'package:moviezstreaming/widgets/movie_modal.dart'; 

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 38, left: 24, bottom: 4, right: 24),
          child: Container(
            height: 45,
            width: 327,
            decoration : const BoxDecoration(  
                shape:  BoxShape.rectangle,
                color: Colors.white,
                borderRadius:  BorderRadius.all(Radius.circular(16.0)) 
              ),
              child: Row(
                children : [
                  Padding(
                    padding: EdgeInsets.only(left: 22, right: 16, top: 11, bottom: 12),
                    child: IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.search, color: Colors.black, size: 22,), 
                  )
                ),
                Text("The Dar|"), 
                ],
              ), 
            ),
               
          ), 
          const Padding( padding: const EdgeInsets.only(left: 24, top: 35),
                child:  Text("Search Result (3)", style: TextStyle( fontSize: 20, fontWeight: FontWeight.w800),), ),

          const MovieModal(imageUrl: "images/image8.jpg", textTitle: "The Dark II", textGenre: "Horror", rateCount: 4),
          const MovieModal(imageUrl: "images/image9.jpg", textTitle: "The Dark Knight", textGenre: "Heroes", rateCount: 5),
          const MovieModal(imageUrl: "images/image10.jpg", textTitle: "The Dark Tower", textGenre: "Action", rateCount: 4),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: 
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(13, 8, 70, 1),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(37.0),
              ),
            ), 
                 onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 327,
                    child: Text("Suggest Movie"),
                    ),
                    )
          ),
        ],
      ),
    );
  }
}