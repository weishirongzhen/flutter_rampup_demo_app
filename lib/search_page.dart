import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples.dart';
import 'package:flutterrampupdemoapp/providers/search_provider.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SearchProvider(context),
        ),
      ],
      child: Consumer<SearchProvider>(builder: (context, snapshot, _) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            elevation: 0,
            titleSpacing: 10,
            title: SizedBox(
              height: 35,
              child: TextField(
                controller: snapshot.searchTextController,
                onChanged: (text) {
                  snapshot.hasText = text.isNotEmpty;
                  snapshot.updateSearchResult(text);
                },
                autofocus: true,
                textAlign: TextAlign.start,
                maxLines: 1,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: snapshot.hasText
                      ? InkWell(
                          onTap: () {
                            snapshot.updateSearchText('');
                          },
                          child: Icon(
                            Icons.cancel,
                            color: Colors.grey,
                          ),
                        )
                      : null,
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.2),
                  hintText: 'Search Widget (Total ${OfficialSamples().sample.length})',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(4.0),
                    ),
                  ),
                  hintStyle: TextStyle(fontSize: 16),
                  contentPadding: EdgeInsets.only(left: 10, right: 4),
                ),
              ),
            ),
            actions: <Widget>[
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(4),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7, bottom: 7, left: 2, right: 2),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: ListView.separated(
            itemCount: snapshot.resultList.length,
            itemBuilder: (context, index) {
              return snapshot.resultList[index];
            },
            separatorBuilder: (context, index) => Divider(
              height: 0,
            ),
          ),
        );
      }),
    );
  }
}
