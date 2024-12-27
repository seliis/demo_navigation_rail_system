import "package:flutter/material.dart";

final class Item {
  const Item({
    required this.name,
    this.children = const [],
    this.icon,
  });

  final String name;
  final IconData? icon;
  final List<Item> children;
}

final List<Item> items = [
  Item(
    icon: Icons.dashboard,
    name: "M1",
  ),
  Item(
    name: "M2",
    children: [
      Item(
        name: "M2.1",
      ),
      Item(
        name: "M2.2",
      ),
    ],
  ),
  Item(
    name: "M3",
    children: [
      Item(
        name: "M3.1",
      ),
      Item(
        name: "M3.2",
      ),
      Item(
        name: "M3.3",
      ),
    ],
  ),
];

final class CustomNavigator extends StatefulWidget {
  const CustomNavigator({
    super.key,
    required this.items,
  });

  final List<Item> items;

  @override
  State<CustomNavigator> createState() => _CustomNavigatorState();
}

final class _CustomNavigatorState extends State<CustomNavigator> {
  late Item selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.items.first;
  }

  @override
  Widget build(context) {
    return Row(
      children: [
        Container(
          color: Colors.teal.shade50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.items.map((item) {
                return IconButton(
                  icon: Icon(
                    item.children.isNotEmpty
                        ? selectedItem == item
                            ? Icons.folder_open
                            : Icons.folder
                        : item.icon,
                  ),
                  onPressed: () {
                    setState(() {
                      if (selectedItem.children.isNotEmpty && selectedItem == item) {
                        selectedItem = widget.items.first;
                      } else {
                        selectedItem = item;
                      }
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ),
        if (selectedItem.children.isNotEmpty)
          SizedBox(
            width: 256,
            child: Column(
              children: selectedItem.children.map((child) {
                return ListTile(
                  title: Text(child.name),
                  hoverColor: Colors.teal.shade50,
                  onTap: () {},
                );
              }).toList(),
            ),
          ),
        VerticalDivider(
          color: Colors.black,
          width: 0.0,
        ),
      ],
    );
  }
}
