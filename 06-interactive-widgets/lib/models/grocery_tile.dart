import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models.dart';

class GroceryTile extends StatelessWidget {
// 1
  final GroceryItem item;

  // 2
  final  Function(bool?) onComplete;
  // 3
  final TextDecoration textDecoration;
  GroceryTile({Key? key, required this.item, required this.onComplete})
      : textDecoration =
            item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60.0,
            width: 10,
            color: item.color,
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: GoogleFonts.lato(
                    decoration: textDecoration,
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4.0),
              buildDate(),
              const SizedBox(height: 4.0),
              buildImportance(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // 7
                  Text(item.quantity.toString(),
                      style: GoogleFonts.lato(
                          decoration: textDecoration, fontSize: 21.0)),
                  // 8
                  buildCheckbox(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildDate() {
    // final dateFormatter = DateFormat('MMMM dd h:mm a');

    // final dateString = dateFormatter.format(item.date);
    return Text(
      '${item.date}',
      style: TextStyle(decoration: textDecoration),
    );
  }

  Widget buildImportance() {
    if (item.importance == Importance.low) {
      return Text(
        'low',
        style: GoogleFonts.lato(
          color: Colors.red,
          fontWeight: FontWeight.w900,
          decoration: textDecoration,
        ),
      );
    } else if (item.importance == Importance.high) {
      return Text(
        'high',
        style: GoogleFonts.lato(
          color: Colors.red,
          fontWeight: FontWeight.w900,
          decoration: textDecoration,
        ),
      );
    } else if (item.importance == Importance.medium) {
      return Text(
        'medium',
        style: GoogleFonts.lato(
          color: Colors.red,
          fontWeight: FontWeight.w900,
          decoration: textDecoration,
        ),
      );
    } else {
      return throw Exception('This importance type does not exist');
    }
  }

  Widget buildCheckbox() {
    return Checkbox(
      value: item.isComplete,
      onChanged: onComplete
    );
  }
}
