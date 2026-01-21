class Person {
  String name;
  String email;

  Person(this.name, this.email);
}

class Author extends Person {
  static int _counter = 0;
  late int id;

  Author(String name, String email) : super(name, email) {
    _counter++;
    id = _counter;
  }
}

class Book {
  String name;
  String ISBN;
  int editionNumber;
  Author author;

  Book(this.name, this.ISBN, this.editionNumber, this.author);
}

class Customer extends Person {
  List<Book> bookList = [];

  Customer(String name, String email) : super(name, email);

  void addBook(Book book) {
    bookList.add(book);
  }

  void printInformation() {
    print('Customer: $name ($email)');
    print('Purchased Books:');
    for (var book in bookList) {
      print(' - ${book.name} (ISBN: ${book.ISBN}) by ${book.author.name}');
    }
  }
}


























