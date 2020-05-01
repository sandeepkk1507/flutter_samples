class Album {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;
  int gameValue = 0;
  int opacity = 0;

  Album({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,);
  }
}

List urlList = ["https://thumbor.thedailymeal.com/dvowEgee_oHCd6hBquph52WCPmA=/870x565/https://www.thedailymeal.com/sites/default/files/slideshows/1865498/2191809/0.jpg",
"https://www.listchallenges.com/f/lists/6c536c33-489b-4bee-b259-00074fa53a0d.jpg",
"https://www.golanguedoc.com/images/safe/500/france-sites500.jpg",
"https://www.pandotrip.com/wp-content/uploads/2018/03/The-Great-Sphinx-Egypt.jpg",
"https://i.pinimg.com/originals/bc/dd/db/bcdddbf935fa559eb099d505698e9a25.jpg",
"https://www.usnews.com/dims4/USNEWS/bb8c800/2147483647/thumbnail/640x420/quality/85/?url=https%3A%2F%2Fmedia.beam.usnews.com%2F9d%2F9b%2Fd8dc8f3747b9b147d5c0a7fa1888%2F2-angkor-wat-getty.jpg",
"https://cdn.virily.com/wp-content/uploads/2018/08/Stonehenge-EH11025.jpg",
"https://walksinsiderome.com/wp-content/uploads/2020/02/The_most_famous_places_in_Rome_colosseum.jpg",
"https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2016/07/Arc-de-Triomphe-in-Paris.jpg",
"https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2017/08/Toronto.jpg",
"https://www.planetware.com/photos-large/F/france-louvre-museum-2.jpg",
"https://treknova.com/travel-advice/wp-content/uploads/2018/09/London-1024x768-1.jpeg",
"https://img-aws.ehowcdn.com/560x560p/photos.demandstudios.com/getty/article/56/66/87467110.jpg",
"https://i.pinimg.com/originals/af/1c/7b/af1c7b852d85510ede4c440b0b5cd912.jpg",
"https://www.planetware.com/photos-tiles/new-york-city-statue-of-liberty.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLe47ijygmDeBz99qr-Lu0XIvI6yXto90fbDcl3JTjaBrOgZWE&s",
"https://www.planetware.com/photos-large/US/arizona-grand-canyon-2.jpg",
"https://www.trekamerica.com/sites/default/files/styles/panopoly_image_original/public/millenium-park-chicago.jpg?t=1BRO2V&itok=42wMAfAG"];


