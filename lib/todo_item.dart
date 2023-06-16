import 'package:flutter/material.dart';
import 'package:todo/constants/constants.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  void handleItemPress() {
    print("item pressed");
  }

  void deleteItem() {
    print("delete");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
          tileColor: Colors.white,
          onTap: handleItemPress,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          leading: const Icon(
            Icons.check_box,
            color: tdBlue,
          ),
          title: const Text("Hello World"),
          trailing: IconButton(
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
              size: 25,
            ),
            onPressed: deleteItem,
          ),
        ));
  }
}
