import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples.dart';

class OfficialWidgetsPage extends StatefulWidget {
  @override
  _OfficialWidgetsPageState createState() => _OfficialWidgetsPageState();
}

class _OfficialWidgetsPageState extends State<OfficialWidgetsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.separated(
          itemCount: OfficialSamples().sample.length,
          separatorBuilder: (context, index) => Divider(
              ),
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    OfficialSamples().sample[index].route,
                  );
                },
                selected: true,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ],
                ),
                title: Text(
                  OfficialSamples().sample[index].name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                subtitle: Text(
                  OfficialSamples().sample[index].description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
