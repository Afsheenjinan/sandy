import 'package:sandy/models/user_model.dart';

class Message {
  final User sender;
  final String date;
  final String text;
  final bool unread, isLiked;

  Message({
    required this.sender,
    required this.date,
    required this.text,
    required this.unread,
    required this.isLiked,
  });
}

User currentUser = User(
  id: 0,
  name: 'Current User',
  profilepic: 'assets/profile/00.jpg',
);

User greg = User(
  id: 1,
  name: 'Greg Tailor',
  profilepic: 'assets/profile/01.jpg',
);

User john = User(
  id: 2,
  name: 'John Carpenter',
  profilepic: 'assets/profile/02.jpg',
);

User ann = User(
  id: 3,
  name: 'Ann Sledger',
  profilepic: 'assets/profile/03.jpg',
);

User harry = User(
  id: 4,
  name: 'Harry POtter',
  profilepic: 'assets/profile/04.jpg',
);

User james = User(
  id: 5,
  name: 'James Ivonovic',
  profilepic: 'assets/profile/05.jpg',
);

User alina = User(
  id: 6,
  name: 'Alina Patric',
  profilepic: 'assets/profile/06.jpg',
);

User sam = User(
  id: 5,
  name: 'Sam Stain',
  profilepic: 'assets/profile/07.jpg',
);

User albus = User(
  id: 5,
  name: 'Albus Dumbledore',
  profilepic: 'assets/profile/08.jpg',
);

List<User> favourite = [greg, john, ann, harry, james];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: james,
    date: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: albus,
    date: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    date: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: ann,
    date: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: alina,
    date: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    date: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    date: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    date: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    date: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    date: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    date: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    date: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    date: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
