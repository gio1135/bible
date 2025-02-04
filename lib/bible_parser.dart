import 'package:flutter/services.dart' show rootBundle;
import 'package:xml/xml.dart';

// Define the data structures
class Book {
  String? name;
  List<Chapter> chapters = [];
}

class Chapter {
  int? number;
  List<Verse> verses = [];
}

class Verse {
  int? number;
  String? text;
}

Future<Chapter> parseChapter(String bookName, int chapterNumber) async {
  // Load the USFX data
  final xmlString = await rootBundle.loadString('assets/eng-kjv2006_usfx.xml');

  // Parse the XML data
  final document = XmlDocument.parse(xmlString);

  // Find the <book> element with the given name
  final bookElement = document.findAllElements('book').firstWhere((element) => element.getElement('id')?.text == bookName, orElse: () => throw Exception('Book not found'));

  // Find the <c> (chapter) element with the given number
  final chapterElement = bookElement.findAllElements('c').firstWhere((element) => int.parse(element.getAttribute('id')?? '0') == chapterNumber, orElse: () => throw Exception('Chapter not found'));

  // Extract the chapter data
  final chapter = Chapter();
  chapter.number = chapterNumber;

  final verseElements = chapterElement.findAllElements('v');
  for (final verseElement in verseElements) {
    final verse = Verse();
    verse.number = int.parse(verseElement.getAttribute('id')?? '0');
    verse.text = verseElement.text;
    chapter.verses.add(verse);
  }

  return chapter;
}