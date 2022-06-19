import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/models/category_collection.dart';
import '../../common.widgets/catogory_icon.dart';
import '../../models/category.dart';
import 'footer.dart';
import 'grid_view_items.dart';
import 'list_view_items.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String layoutType = "grid";
  CategoryCollection categoryCollection = CategoryCollection();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  if (layoutType == "grid") {
                    setState(() {
                      layoutType = "list";
                    });
                  } else {
                    setState(() {
                      layoutType = "grid";
                    });
                  }
                },
                child: Text(
                  layoutType == "grid" ? "Edit" : "Done",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                  child: AnimatedCrossFade(
                duration: Duration(milliseconds: 300),
                crossFadeState: layoutType == "grid"
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: GridViewItems(
                  categories: categoryCollection.selectedCategories,
                ),
                secondChild:
                    ListViewItems(categoryCollection: categoryCollection),
              )),
              footer(),
            ],
          ),
        ));
  }
}
