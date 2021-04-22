List<Place> places = [
  Place(
      name: 'Iphone',
      place: '1000+ Points',
      imgPath:
      'https://pngimg.com/uploads/iphone_12/iphone_12_PNG10.png',
      ),
  Place(
      name: 'Nike',
      place: '3000+ Points ',
      imgPath:
      'https://static.nike.com/a/images/t_default/it2xgu87ahgfxal4qijo/air-tailwind-79-shoe-PNXmkq.png',
      ),
  Place(
      name: 'Starbucks',
      place: '500+ Points',
      imgPath:
      'https://lh3.googleusercontent.com/proxy/oz0xCJUTzSlxF302X0AE0-PqGNyH2KTeQXirwgXKkPz5GVDaegNWkv75bwgFRwvozp8cW-C1SvSBWL721vN7LPlHZxi6ENn1uKJ-y1GIf04oOJ2Ga06o3mec9KOmAXjDjy8D'
      ),
  Place(
      name: 'Netflix',
      place: '500+ Points',
      imgPath:
      'https://pngimg.com/uploads/netflix/netflix_PNG10.png',
      ),
  Place(
    name: 'Spotify',
    place: '200+ Points',
    imgPath:
    'https://www.freepnglogos.com/uploads/spotify-logo-png/spotify-download-logo-30.png',
  ),
  Place(
    name: 'Valyrian Sword',
    place: '2000+ Points',
    imgPath:
    'https://i.pinimg.com/originals/32/00/98/320098a4903867cac4addb96ebfc1fe3.png',
  ),
  Place(
    name: 'Lamborghini',
    place: '100000+ Points',
    imgPath:
    'https://i.pinimg.com/originals/b9/66/a5/b966a5c2532ef37a1c03b463b6286279.png',
  ),
  Place(
    name: 'MAC',
    place: '25000+ Points',
    imgPath:
   'https://www.pngarts.com/files/1/Mac-PNG-High-Quality-Image.png',
  ),
];

class Place {
  String name;
  String place;
  String imgPath;


  Place({this.name, this.place, this.imgPath});
}