import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: movies(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.cyan),));
  
}
class movies extends StatelessWidget{
  List films=["Vettam","Game Of Thrones","Kaithi","Vikram","Journey To The Centre Earth","Drishyam 2",
  "Memories","KGF 2","Hridayam","Charlie"];
  List categories=["Romance","Drama Series","Action/Thriller","Action/Mystery",
  "Adventure/Fantacy","Mystery","Thriller/Crime","Action/Drama","Romance/Drama","Adventure/Drama"];
  List pics=["assets/images/71sDaGTfH3L._RI_.jpg",
  "assets/images/MV5BYTRiNDQwYzAtMzVlZS00NTI5LWJjYjUtMzkwNTUzMWMxZTllXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_.jpg",
  "assets/images/Kaithi-Site.jpg",
  "assets/images/kamal-haasan-vikram-1.webp",
  "assets/images/14788d11-e279-4963-bb0a-5161c5b391cf.jpg",
  "assets/images/MV5BM2RiZDVjYWEtZGNhYy00ZGU0LTgwZjMtZTJmNmMyNGQ5NGYyXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg",
  "assets/images/Memories_(2013_film).jpg",
  "assets/images/jpg.jpg",
  "assets/images/Hridayam.jpg",
  "assets/images/Charlie_2015-Malayalam_film_poster.jpg"];
  List year=["2004","2012","2019","2022","2008","2020","2013","2022","2022","2015"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MOVIE LISTS",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),)),
      body:ListView.builder(itemBuilder:((context, index) {
        return Container(
      child: Card(
        child: ListTile(
          title: Text(films[index]),
          subtitle: Text(categories[index]),
          leading: Image(image: AssetImage(pics[index])),
          trailing: Text(year[index]),),
      ),
        );
      }) ,itemCount: films.length,));
         
          
        }
  }
