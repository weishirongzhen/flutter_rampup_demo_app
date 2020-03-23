import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples.dart';

class SearchProvider with ChangeNotifier {
  final BuildContext context;

  SearchProvider(this.context);

  TextEditingController searchTextController = TextEditingController();

  bool _hasText = false;

  bool get hasText => _hasText;

  set hasText(bool value) {
    _hasText = value;
    notifyListeners();
  }

  List<Widget> _resultList = List();
  List<Widget> _historyList = List();

  List<Widget> get resultList => _resultList;

  void updateSearchResult(String keyWord) {
    _resultList.clear();
    if (keyWord.isNotEmpty) {
      _resultList.addAll(OfficialSamples()
          .sample
          .where((element) => element.name.toLowerCase().contains(keyWord.toLowerCase()))
          .map((e) => ListTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    e.route,
                  );
                },
                title: Text(
                  e.name,
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ))
          .toList());
    }
    notifyListeners();
  }

  void updateSearchHistory() {
    _historyList.clear();
  }

  void updateSearchText(String text) {
    searchTextController.text = text;
    _hasText = text.isNotEmpty;
    updateSearchResult(text);
  }
}
