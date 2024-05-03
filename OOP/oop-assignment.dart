class Music {
  String Artist;
  String Album;
  int Year;
  double Price;

  Music(this.Artist, this.Album, this.Year, this.Price);

  void Display() {
    print("I love $Artist, released $Album in $Year, and it costs $Price.");
  }
}

class Movie extends Music {
  String Director;
  String Genre;

  Movie(this.Director, this.Genre, Artist, Album, Year, Price)
      : super(Artist, Album, Year, Price);

  void Display() {
    print(
        "I love $Artist, directed by $Director, released $Album in $Year, and it costs $Price.");
  }
}

void main() {
  var song = Music("Arijit Singh", "Tum Hi Ho", 2013, 10.0);
  song.Display();

  var movie = Movie("Mohit Suri", "Romantic", "Arijit Singh", "Tum Hi Ho", 2013,
      10.0);
  movie.Display();
}