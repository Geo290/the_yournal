import 'package:flutter/material.dart';

class YournalGenreDropdown extends StatefulWidget {
  const YournalGenreDropdown({super.key});

  @override
  State<YournalGenreDropdown> createState() => _YournalGenreDropdownState();
}

class _YournalGenreDropdownState extends State<YournalGenreDropdown> {
  String? selectedValue;

  final List<Map<String, dynamic>> genderOptions = [
    {'value':'Female', 'label':'Female', 'icon': Icons.female},
    {'value':'Maale', 'label':'Male', 'icon': Icons.male},
    {'value':'Non-binary', 'label':'Non-binary', 'icon': Icons.female},
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      hint: const Text( 
        "Gender*",
        style: TextStyle( color: Color.fromARGB(146, 255, 255, 255) ),
      ),
      icon: Icon(Icons.arrow_drop_down, color: Colors.grey[600],),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(60, 255, 255, 255),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        )
      ),
      dropdownColor: const Color.fromARGB(255, 77, 76, 76),
      items: genderOptions.map((gender) {
        return DropdownMenuItem<String>(
          value: gender['value'],
          child: Row(
            children: [
              Icon( gender['icon'], color: Colors.grey[400] ),
              const SizedBox(width: 10),
              Text( gender['label'], style: const TextStyle( color: Color.fromARGB(146, 255, 255, 255)),)
            ],  
          
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
      },
      onTap: () {},
    );
  }
}