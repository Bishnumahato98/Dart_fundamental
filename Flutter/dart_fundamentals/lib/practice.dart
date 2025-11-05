// 1️ Create a list of names and print all names using list
void main() {
  List<String> names = ['Bishnu', 'Sita', 'Ram', 'Hari', 'Gita'];
  print("All names:");
  for (var name in names) {
    print(name);
  }
}


// 2.Create a set of fruits and print all fruits using loop
void main() {
  Set<String> fruits = {'Apple', 'Banana', 'Mango', 'Orange', 'Grapes'};
  print("All fruits:");
  for (var fruit in fruits) {
    print(fruit);
  }
}


//3. Program that reads list of expenses using user input and prints total
import 'dart:io';

void main() {
  List<double> expenses = [];
  print("Enter number of expenses:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    stdout.write("Enter expense $i: ");
    double amount = double.parse(stdin.readLineSync()!);
    expenses.add(amount);
  }

  double total = expenses.reduce((a, b) => a + b);
  print("Total expenses: $total");
}



// 4.Create empty list of type String called days, add 7 days, and print
void main() {
  List<String> days = [];
  days.addAll(['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']);

  print("Days of the week:");
  for (var day in days) {
    print(day);
  }
}



// 5.Add your 7 friends’ names to list and find names starting with 'a'
void main() {
  List<String> friends = ['Anita', 'Bishnu', 'Arun', 'Sita', 'Amit', 'Hari', 'Ajay'];

  var aNames = friends.where((name) => name.toLowerCase().startsWith('a'));
  print("Friends whose names start with 'a':");
  for (var name in aNames) {
    print(name);
  }
}


// 6.Create a map (name, address, age, country). Update and print
void main() {
  Map<String, dynamic> person = {
    'name': 'Bishnu',
    'address': 'Birgunj',
    'age': 21,
    'country': 'Nepal'
  };

  person['country'] = 'Japan'; // update value

  print("All keys and values:");
  person.forEach((key, value) {
    print('$key : $value');
  });
}



// 7.Create a map with name, phone keys and find all keys of length 4
void main() {
  Map<String, dynamic> contacts = {
    'name': 'Bishnu',
    'phon': '9841123456',
    'addr': 'Birgunj',
    'code': 'NP01'
  };

  var keysLength4 = contacts.keys.where((key) => key.length == 4);
  print("Keys with length 4:");
  for (var key in keysLength4) {
    print(key);
  }
}


// 8.Simple To-Do application (add, remove, view)
import 'dart:io';

void main() {
  List<String> tasks = [];
  while (true) {
    print("\n1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Choose an option: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write("Enter task: ");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added!");
    } else if (choice == 2) {
      stdout.write("Enter task to remove: ");
      String task = stdin.readLineSync()!;
      tasks.remove(task);
      print("Task removed!");
    } else if (choice == 3) {
      print("Your tasks:");
      for (var t in tasks) {
        print("- $t");
      }
    } else if (choice == 4) {
      print("Goodbye!");
      break;
    } else {
      print("Invalid choice!");
    }
  }
}
