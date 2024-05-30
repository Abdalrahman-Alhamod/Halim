import 'package:flutter/material.dart';
import 'package:halim/src/search/presentation/views/widgets/sortBy/widgets/data/sort_by_list_item.dart';

class SortByList extends StatefulWidget {
  const SortByList({super.key, this.startIndex = 0, required this.onChanged});
  final int startIndex;
  final void Function(String value) onChanged;
  @override
  State<SortByList> createState() => _SortByListState();
}

class _SortByListState extends State<SortByList> {
  late String _value;
  late List<SortByListItem> items;
  @override
  void initState() {
    items = [
      SortByListItem(label: 'Most Popular', value: 'most popular'),
      SortByListItem(label: 'Best Selling', value: 'best selling'),
      SortByListItem(label: 'Newest', value: 'newst'),
      SortByListItem(label: 'Oldest', value: 'oldest'),
      SortByListItem(label: 'Rating', value: 'rating'),
      SortByListItem(label: 'Price', value: 'price'),
    ];
    _value = items[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index].label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              setState(() {
                _value = items[index].value;
              });
            },
            trailing: Radio<String>(
              value: items[index].value,
              groupValue: _value,
              onChanged: (value) {
                setState(
                  () {
                    _value = value!;
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
