import 'package:ecom_firebase/presentation/home/widgets/categories.dart';
import 'package:ecom_firebase/presentation/home/widgets/headers.dart';
import 'package:ecom_firebase/presentation/home/widgets/search_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 24,),
            SearchField(),
            SizedBox(height: 24,),
            Categories(),
            // SizedBox(height: 24,),
            // TopSelling(),
            // SizedBox(height: 24,),
            // NewIn()
          ],
        ),
      ),
    );
  }
}