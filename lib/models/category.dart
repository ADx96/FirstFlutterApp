import 'package:testapp/common.widgets/catogory_icon.dart';

class Category {
  String id;
  String name;
  bool isChecked;
  final CategoryIcon icon;

  Category({
    required this.icon,
    required this.id,
    required this.name,
    this.isChecked = true,
  });

  void toggleCheckbox() {
    isChecked = !isChecked;
  }
}
