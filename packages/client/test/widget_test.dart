// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
//import 'package:http/http.dart' as http;
//import 'dart:html' as html;

import 'package:client/main.dart';
import 'package:client/home.dart';
import 'package:client/search_bar.dart';
import 'package:client/nav_bar.dart';

//@required
void main() {
  testWidgets('Creates Home Screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    const home = Home();

    await tester.pumpWidget(home);

    //final SearchBar searchbar = const SearchBar();
    //final NavBar appbarr = const NavBar();

    // Verify that our widgets are created.
    expect(find.byWidget(home), findsOneWidget);
    //expect(find.byWidget(NavBar()), findsOneWidget);
  });

  testWidgets("Creates SearchBar component and NavBar component",
      (WidgetTester tester) async {
    final SearchBar searchbar = const SearchBar();
    final NavBar appbarr = const NavBar();

    await tester.pumpWidget(MaterialApp(
        key: Key('TestKey'), home: Scaffold(appBar: appbarr, body: searchbar)));

    expect(find.byWidget(appbarr), findsOneWidget);
    expect(find.byWidget(searchbar), findsOneWidget);
  });
}
