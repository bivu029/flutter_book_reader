// Creating genres
import 'package:bookbazar/src/core/global/all.enitity.dart';

final fictionGenre = Genre(
  id: '1',
  name: 'Fiction',
  description:
      'Genre of imaginative literature, including novels and short stories.',
);

final nonFictionGenre = Genre(
  id: '2',
  name: 'Non-Fiction',
  description:
      'Genre of factual prose writing that is based on real-life events and information.',
);

// Creating sub-genres
final literarySubGenre = SubGenre(
  id: '1',
  name: 'Literary',
  description:
      'Sub-genre of fiction that is known for its artistic and literary value.',
);

final biographySubGenre = SubGenre(
  id: '2',
  name: 'Biography',
  description:
      'Sub-genre of non-fiction that tells the story of someone else\'s life.',
);

// Creating chapters
final chapter1 = Chapter(
  id: '1',
  title: 'Chapter 1',
  content: '''
As the sun dipped below the horizon, casting long shadows across the sleepy town, young Emily found herself standing in front of the old mansion at the edge of the forest. Its crumbling facade loomed ominously against the darkening sky, ivy creeping up its walls like twisted fingers.

Curiosity tingled in Emily's veins as she approached the wrought-iron gate, its hinges creaking in protest. She had heard whispers about the mansion – rumors of hidden treasures and ghostly apparitions that haunted its halls.

Ignoring the warning signs, Emily pushed open the gate and ventured into the overgrown garden. Moonlight filtered through the tangled branches, casting eerie shadows on the ground. The air was heavy with the scent of damp earth and decaying leaves.

As she reached the front door, Emily hesitated for a moment, her heart pounding in her chest. With a trembling hand, she reached out and turned the rusty doorknob. The door creaked open, revealing a dimly lit hallway beyond.

Taking a deep breath, Emily stepped inside, her footsteps echoing in the empty silence. Little did she know that her curiosity would lead her on a journey fraught with danger and mystery, unlocking secrets that had long been forgotte''',
  isFree: true,
);

final chapter2 = Chapter(
  id: '2',
  title: 'Chapter 2',
  content:
      '''This function splits the input string by spaces using the split method, which returns a
List<String> containing all the words as separate elements. 
Then, it returns the length of this list, which gives us the total number of words''',
  isFree: true,
);
final chapterlist1 =
    ChapterList(id: '1', bookId: "1", chapter: [chapter1, chapter2]);
final chapterlist2 =
    ChapterList(id: '2', bookId: "2", chapter: [chapter1, chapter2]);
final chapterlist3 =
    ChapterList(id: '3', bookId: "3", chapter: [chapter1, chapter2]);
final chapterlist4 =
    ChapterList(id: '4', bookId: "4", chapter: [chapter1, chapter2]);
final chapterlist5 =
    ChapterList(id: '5', bookId: "5", chapter: [chapter1, chapter2]);
final chapterlist6 =
    ChapterList(id: '6', bookId: "6", chapter: [chapter1, chapter2]);
final author = Author(authorname: "fsdf");
// Creating books
final book1 = Book(
    id: '1',
    title: 'SampleBook1',
    description: 'This is a sample book description.',
    author: author,
    bookCover:
        'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
    isHot: true,
    genres: [fictionGenre],
    subGenres: [literarySubGenre],
    // chapters: [chapter1, chapter2],
    chapterList: chapterlist1,
    count: 100,
    rating: 4.5,
    likeCount: 10,
    dislikeCount: 2,
    bookstatus: ["pending"]);

final book2 = Book(
    id: '2',
    title: 'SampleBook2',
    description: 'This is a sample book description.',
    author: author,
    bookCover:
        'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
    isHot: true,
    genres: [fictionGenre],
    subGenres: [literarySubGenre],
    // chapters: [chapter1, chapter2],
    chapterList: chapterlist2,
    count: 100,
    rating: 4.5,
    likeCount: 10,
    dislikeCount: 2,
    bookstatus: ["pending"]);

final book3 = Book(
    id: '3',
    title: 'SampleBook3',
    description: 'This is a sample book description.',
    author: author,
    bookCover:
        'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
    isHot: true,
    genres: [fictionGenre],
    subGenres: [literarySubGenre],
    // chapters: [chapter1, chapter2],
    chapterList: chapterlist3,
    count: 100,
    rating: 4.5,
    likeCount: 10,
    dislikeCount: 2,
    bookstatus: ["pending"]);

final book4 = Book(
    id: '4',
    title: 'SampleBook4',
    description: 'This is a sample book description.',
    author: author,
    bookCover:
        'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
    isHot: true,
    genres: [fictionGenre],
    subGenres: [literarySubGenre],
    // chapters: [chapter1, chapter2],
    chapterList: chapterlist4,
    count: 100,
    rating: 4.5,
    likeCount: 10,
    dislikeCount: 2,
    bookstatus: ["pending"]);

final book5 = Book(
    id: '5',
    title: 'SampleBook5',
    description: 'This is a sample book description.',
    author:author,
    bookCover:
        'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
    isHot: true,
    genres: [nonFictionGenre],
    subGenres: [biographySubGenre],
    // chapters: [chapter1, chapter2],
    chapterList: chapterlist5,
    count: 100,
    rating: 4.5,
    likeCount: 10,
    dislikeCount: 2,
    bookstatus: ["pending"]);

Book book6 = Book(
    id: '6',
    title: 'SampleBook6',
    description: 'This is a sample book description.',
    author: author,
    bookCover:
        'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
    isHot: true,
    genres: [nonFictionGenre],
    subGenres: [biographySubGenre],
    // chapters: [chapter1, chapter2],
    chapterList: chapterlist6,
    count: 100,
    rating: 4.5,
    likeCount: 10,
    dislikeCount: 2,
    bookstatus: ["pending"]);
List<Book> fakebookList = [book1, book2, book3, book4, book5, book6];
final List<Reviews> fakeReviews = [
  Reviews(
    bookid: '1',
    userid: 'user1',
    username: 'John Doe',
    review: 'This book is amazing! I couldn\'t put it down.',
    likeCount: 10,
    dislikeCount: 2,
    listSubreviews: [
      SubReviews(
        userid: 'user2',
        username: 'Jane Smith',
        userReply: 'Glad you enjoyed it!',
        likeCount: 5,
        dislikeCount: 1,
      ),
      SubReviews(
        userid: 'user3',
        username: 'Alex Johnson',
        userReply: 'I found it a bit boring, to be honest.',
        likeCount: 3,
        dislikeCount: 8,
      ),
    ],
  ),
  Reviews(
    bookid: '1',
    userid: 'user4',
    username: 'Emma Watson',
    review: 'I loved the characters in this book!',
    likeCount: 8,
    dislikeCount: 0,
    listSubreviews: [
      SubReviews(
        userid: 'user5',
        username: 'Chris Evans',
        userReply: 'Me too! They were so well-written.',
        likeCount: 7,
        dislikeCount: 0,
      ),
    ],
  ),
  // Add more fake reviews as needed
];
