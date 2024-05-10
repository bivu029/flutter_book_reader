class Genre {
  final String name;
  final List<SubGenre> subGenres;

  Genre(this.name, this.subGenres);
}

class SubGenre {
  final String name;
  final String imageUrl;
  SubGenre(this.name, this.imageUrl);
}

class GenreCategory {
  final List<Genre>? genreList;

  GenreCategory({required this.genreList});
}

const String imageurl =
    "https://gravatar.com/avatar/067797c879fd3e9f9b7f006aebf98974?s=400&d=robohash&r=x";
final localgenercategory = GenreCategory(genreList: [
  Genre('Fiction', [
    SubGenre('Literary',imageurl),
    SubGenre('Historical',imageurl),
    SubGenre('Sci-Fi',imageurl),
    SubGenre('Fantasy',imageurl),
    SubGenre('Mystery',imageurl),
    SubGenre('Romance',imageurl),
    SubGenre('Horror',imageurl),
    SubGenre('Adventure',imageurl),
  ]),
  Genre('Non-Fiction', [
    SubGenre('Biography',imageurl),
    SubGenre('Self-Help',imageurl),
    SubGenre('Business',imageurl),
    SubGenre('Health',imageurl),
    SubGenre('History',imageurl),
    SubGenre('Travel',imageurl),
    SubGenre('Science',imageurl),
    SubGenre('Technology',imageurl),
  ]),
// Children & YA
  Genre('Children & YA', [
    SubGenre('Picture Books',imageurl),
    SubGenre('Middle Grade',imageurl),
    SubGenre('Young Adult',imageurl),
  ]),

// Classics
  Genre('Classics', [
    SubGenre('Ancient',imageurl),
    SubGenre('Modern',imageurl),
  ]),

// Poetry & Drama
  Genre('Poetry & Drama', [
    SubGenre('Poetry',imageurl),
    SubGenre('Plays',imageurl),
  ]),

// Graphic Novels
  Genre('Graphic Novels', [
    SubGenre('Graphic Novels',imageurl),
    SubGenre('Comics',imageurl),
  ]),

// Romance
  Genre('Romance', [
    SubGenre('Contemporary',imageurl),
    SubGenre('Historical',imageurl),
    SubGenre('Paranormal',imageurl),
    SubGenre('LGBTQ+',imageurl),
  ]),

// Mystery & Thriller
  Genre('Mystery & Thriller', [
    SubGenre('Detective',imageurl),
    SubGenre('Psychological',imageurl),
    SubGenre('Legal',imageurl),
    SubGenre('Espionage',imageurl),
  ]),

// Sci-Fi & Fantasy
  Genre('Sci-Fi & Fantasy', [
    SubGenre('Space Opera',imageurl),
    SubGenre('Dystopian',imageurl),
    SubGenre('Epic Fantasy',imageurl),
    SubGenre('Urban Fantasy',imageurl),
  ]),

// Horror
  Genre('Horror', [
    SubGenre('Supernatural',imageurl),
    SubGenre('Psychological',imageurl),
    SubGenre('Gothic',imageurl),
  ]),

// Biography & Memoir
  Genre('Biography & Memoir', [
    SubGenre('Autobiography',imageurl),
    SubGenre('Memoir',imageurl),
    SubGenre('Inspirational',imageurl),
  ]),

// Self-Help
  Genre('Self-Help', [
    SubGenre('Motivational',imageurl),
    SubGenre('Time Management',imageurl),
    SubGenre('Relationships',imageurl),
  ]),

// Business & Finance
  Genre('Business & Finance', [
    SubGenre('Entrepreneurship',imageurl),
    SubGenre('Investing',imageurl),
    SubGenre('Personal Finance',imageurl),
  ]),

// Health & Wellness
  Genre('Health & Wellness', [
    SubGenre('Personal Finance',imageurl),
    SubGenre('Nutrition & Diet',imageurl),
    SubGenre('Fitness & Exercise',imageurl),
    SubGenre('Mental Health',imageurl),
  ]),

// History
  Genre('History', [
    SubGenre('World',imageurl),
    SubGenre('European',imageurl),
    SubGenre('American',imageurl),
  ]),

// Travel
  Genre('Travel', [
    SubGenre('Guides',imageurl),
    SubGenre('Memoirs',imageurl),
  ]),

// Science & Nature
  Genre('Science & Nature', [
    SubGenre('Popular Science',imageurl),
    SubGenre('Natural History',imageurl),
    SubGenre('Environment',imageurl),
  ]),
]);
