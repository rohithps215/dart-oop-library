class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void display() {
    print("Book: $title by $author");
  }
}

class Person {
  String name;

  Person(this.name);

  void showName() {
    print("Name: $name");
  }
}

class Member extends Person {
  int memberId;

  Member(String name, this.memberId) : super(name);

  void borrowBook(Book book) {
    print("$name borrowed ${book.title}");
  }
}

mixin Notifier {
  void notifyUser(String message) {
    print("Notification: $message");
  }
}

class Librarian extends Person with Notifier {
  Librarian(String name) : super(name);

  void addBook(Book book) {
    print("$name added ${book.title}");
    notifyUser("New book added!");
  }
}

void main() {
  Book book = Book("spider man", "stan lee");
  Member member = Member("Rohith", 101);
  Librarian librarian = Librarian("stan lee");

  book.display();
  member.showName();
  member.borrowBook(book);
  librarian.addBook(book);
}