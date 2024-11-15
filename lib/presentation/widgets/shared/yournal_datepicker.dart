import 'package:flutter/material.dart';
import 'package:yournal/config/themes/yournal_themes.dart';

class YournalDatepicker extends StatefulWidget {
  const YournalDatepicker({super.key});

  @override
  State<YournalDatepicker> createState() => _YournalDatepickerState();
}

class _YournalDatepickerState extends State<YournalDatepicker> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          color: YournalThemes.selectColor('tertiary'),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(Icons.calendar_today, color: Colors.grey[400]),
            const SizedBox(width: 12),
            Text(
              selectedDate == null
                  ? 'Date of birth*'
                  : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
