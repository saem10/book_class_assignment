class Book {
  // Properties
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  // Static property to keep track of total books
  static int totalBooks = 0;

  // Constructor
  Book(this.title, this.author, this.publicationYear, this.pagesRead) {
    totalBooks++; // Increment totalBooks when a new Book object is created
  }

  // Method to add pages to pagesRead
  void read(int pages) {
    pagesRead += pages;
  }

  // Getter methods
  int getPagesRead() => pagesRead;

  String getTitle() => title;

  String getAuthor() => author;

  int getPublicationYear() => publicationYear;

  // Method to calculate the age of the book
  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  // Creating three Book objects
  Book book1 = Book('1984', 'George Orwell', 1949, 0);
  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', 1960, 0);
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 0);

  // Simulating reading pages
  book1.read(100);
  book2.read(150);
  book3.read(50);

  // Displaying information about each book
  print('Book 1:');
  print('Title: ${book1.getTitle()}');
  print('Author: ${book1.getAuthor()}');
  print('Publication Year: ${book1.getPublicationYear()}');
  print('Pages Read: ${book1.getPagesRead()}');
  print('Book Age: ${book1.getBookAge()} years');
  print('');

  print('Book 2:');
  print('Title: ${book2.getTitle()}');
  print('Author: ${book2.getAuthor()}');
  print('Publication Year: ${book2.getPublicationYear()}');
  print('Pages Read: ${book2.getPagesRead()}');
  print('Book Age: ${book2.getBookAge()} years');
  print('');

  print('Book 3:');
  print('Title: ${book3.getTitle()}');
  print('Author: ${book3.getAuthor()}');
  print('Publication Year: ${book3.getPublicationYear()}');
  print('Pages Read: ${book3.getPagesRead()}');
  print('Book Age: ${book3.getBookAge()} years');
  print('');

  // Displaying total number of Book objects created
  print('Total Books Created: ${Book.totalBooks}');
}
