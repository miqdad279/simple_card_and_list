import 'package:flutter/material.dart';
import 'package:simple_card_and_list/person.dart';

class CardViewScreen extends StatefulWidget {
  const CardViewScreen({super.key});

  @override
  State<CardViewScreen> createState() => _CardViewScreenState();
}

class _CardViewScreenState extends State<CardViewScreen> {
  List<Person> persons = [
    Person(
        name: 'Bill Will',
        profileImg: 'assets/images/pic-1.png',
        bio: 'Software Defeloper'),
    Person(
        name: 'Andy Smith',
        profileImg: 'assets/images/pic-2.png',
        bio: 'UI Designer'),
    Person(
        name: 'Creepy Story',
        profileImg: 'assets/images/pic-3.png',
        bio: 'Software Tester'),
  ];

  // Custom Widget
  Widget personDetailCard(Person p) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Colors.grey[800],
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(p.profileImg))),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  p.name,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  p.bio,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.menu, size: 35, color: Colors.white),
                Text(
                  'Notifications',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Icon(Icons.notifications_none, size: 35, color: Colors.white)
              ],
            ),
            Column(children: persons.map((p) => personDetailCard(p)).toList())
          ],
        ),
      ),
    );
  }
}
