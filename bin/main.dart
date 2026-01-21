import 'exercise.dart'; 

void main() {
  Author author1 = Author("Ahmed", "ahmed@email.com");
  Author author2 = Author("Sara", "sara@email.com");
  Author author3 = Author("Ali", "ali@email.com");

  Book book1 = Book("Dart Programming", "111-111", 1, author1);
  Book book2 = Book("Flutter Basics", "222-222", 2, author2);
  Book book3 = Book("Advanced Coding", "333-333", 1, author3);

  print("Author 1 ID: ${author1.id}");
  print("Author 2 ID: ${author2.id}");
  print("Author 3 ID: ${author3.id}");

  Customer customer1 = Customer("Khalid", "khalid@test.com");

  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

  customer1.printInformation();
}