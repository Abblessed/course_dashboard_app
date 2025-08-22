import 'package:flutter/material.dart';

class CourseCategoryDropdown extends StatefulWidget {
  const CourseCategoryDropdown({Key? key}) : super(key: key);

  @override
  _CourseCategoryDropdownState createState() => _CourseCategoryDropdownState();
}

class _CourseCategoryDropdownState extends State<CourseCategoryDropdown> {
  String? _selectedCategory;
  final List<String> _categories = ['Science', 'Arts', 'Technology', 'Mathematics', 'History'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: _selectedCategory,
          hint: const Text('Select a Category'),
          items: _categories.map((String category) {
            return DropdownMenuItem<String>(
              value: category,
              child: Text(category),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedCategory = newValue;
            });
          },
        ),
        if (_selectedCategory != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('Selected Category: $_selectedCategory'),
          ),
      ],
    );
  }
}
