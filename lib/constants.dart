import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

getWidth(BuildContext context) {
  return MediaQuery.sizeOf(context).width;
}

isMobile(BuildContext context) => getWidth(context) < 600;
String formatISODate(String isoString) {
  try {
    // Parse the ISO string into a DateTime object
    final date = DateTime.parse(isoString);

    // Create formatters for time and date
    final timeFormatter = DateFormat('hh:mm a');
    final dateFormatter = DateFormat('d MMM yyyy');

    // Format the time and date components
    final formattedTime = timeFormatter.format(date);
    final formattedDate = dateFormatter.format(date);

    // Combine and return the formatted string
    return '$formattedTime. $formattedDate';
  } on FormatException catch (e) {
    // Handle potential parsing errors gracefully
    print('Error parsing ISO string: $e');
    return 'Invalid Date'; // Or provide a user-friendly error message
  }
}

String formatDate(DateTime date) {
  // Create a formatter for the time in 12-hour format with minutes
  final timeFormatter = DateFormat('hh:mm a');

  // Create a formatter for the date in desired format (month abbreviation, day, year)
  final dateFormatter = DateFormat('d MMM yyyy');

  // Format the time and date components separately
  final formattedTime = timeFormatter.format(date);
  final formattedDate = dateFormatter.format(date);

  // Combine the formatted time and date with a separator
  return '$formattedTime. $formattedDate';
}

Color generateColor(String name) {
  final char = name[0].toUpperCase();
  final colorMap = {
    'A': Colors.red,
    'B': Colors.orange,
    'C': Colors.yellow,
    'D': Colors.green,
    'E': Colors.teal,
    'F': Colors.blue,
    'G': Colors.indigo,
    'H': Colors.purple,
    'I': Colors.deepPurple,
    'J': Colors.pink,
    'K': Colors.redAccent,
    'L': Colors.orangeAccent,
    'M': Colors.yellowAccent,
    'N': Colors.lightGreen,
    'O': Colors.tealAccent,
    'P': Colors.lightBlue,
    'Q': Colors.blueAccent,
    'R': Colors.purpleAccent,
    'S': Colors.deepPurpleAccent,
    'T': Colors.pinkAccent,
    'U': Colors.red[200], // Using lighter shades for better contrast
    'V': Colors.orange[200],
    'W': Colors.yellow[200],
    'X': Colors.green[200],
    'Y': Colors.teal[200],
    'Z': Colors.blue[200],
  };

  return colorMap[char] ?? Colors.lightGreen; // Default color
}
