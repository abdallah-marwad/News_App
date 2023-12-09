import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class MainCategory extends StatelessWidget {
  const MainCategory({super.key , required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 85,
      width: 160,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image:AssetImage(categoryModel.categoryName ),
              fit: BoxFit.fill
          )
      ),
      child:  Center(
        child: Text(
          categoryModel.categoryName,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
