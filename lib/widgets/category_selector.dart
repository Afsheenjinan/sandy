import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedindex = 0;
  List<String> categories = ['Messages', 'online', 'groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        color: Theme.of(context).colorScheme.primary,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => setState(() {
                  selectedindex = index;
                }),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(categories[index],
                      style: TextStyle(
                          color: index == selectedindex
                              ? Colors.white
                              : Colors.white60,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2)),
                ),
              );
            }));
  }
}
