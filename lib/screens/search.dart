import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nomnom/controller/food_screen_controller.dart';
import 'package:nomnom/models/common_res.dart';
import 'package:nomnom/models/food.dart';
import 'package:nomnom/utils/data_source.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  final controller = Get.find<FoodScreenController>();

  Future<List<dynamic>> getFoodByName(String name) async {
    List<dynamic> searchList = List.empty();
    CommonResponse cp = await DataSource.search(name, controller.token,
        successCompletion: (c) {}, errCompletion: (s) {});
    print('hello123');
    if (cp.data != null) {
      // for (int i = 0; i < cp.data.length; i++) {
      //   print(cp.data[i]);
      //   searchList.add(Food.fromJson(cp.data[i]));
      // }
      searchList.addAll(cp.data);
      print(searchList.length);
    }
    return searchList;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: getFoodByName(query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return ListView.builder(
            itemBuilder: (BuildContext c, int index) => Text(''),
            itemCount: snapshot.data?.length,
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
