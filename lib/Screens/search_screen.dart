import 'package:amazon_application/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(isReadOnly: false, hasBackButton: true),
    );
  }
}