import 'dart:developer';

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search City "),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: SizedBox(
            height: 200,
            child: TextField(
              onChanged: (value) {
                print(value);

                /// to print input of TextField
                log(value);

                /// to print logs
              },
              onSubmitted: (cityName) async {
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 16,
                ),
                hintText: "Entre city name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.green,
                  ),
                ),
                hintStyle: const TextStyle(),
                suffixIcon: const Icon(Icons.search),
                labelText: "Search",

                ///icon: const Icon(Icons.telegram) /// to put icon before TextField
                ///enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.green),),
                ///focusedBorder: const OutlineInputBorder(),
                ///enabled: false ,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
