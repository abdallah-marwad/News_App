import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/new_widgits/CategoryMain.dart';

class HomeNew extends StatelessWidget {
  const HomeNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "New",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: SizedBox(
          height: 85,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (intex, context) {
                return const MainCategory(
                    categoryModel: CategoryModel(
                        image: 'assets/sports.avif', categoryName: "Sports"));
              }),
        ),
      ),
    );
  }
}
