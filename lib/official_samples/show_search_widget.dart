import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

//<code>
class ShowSearchWidget extends BaseSampleStatelessWidget {
  static String name = 'ShowSearch';
  static String route = '/ui/ShowSearch';

  @override
  Widget buildBody(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        showSearch(context: context, delegate: CustomSearchDelegate());
      },
      child: Text('Click me'),
    );
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/show_search_widget.dart';
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String getDemoUrl() {
    return '';
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return null;
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.blue,
      ),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListTile(
      title: Text('用于展示搜索结果'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(
      title: Text('用于展示建议'),
    );
  }
}

//<code>
