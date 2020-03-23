import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class TooltipWidget extends BaseSampleStatelessWidget {
  static String name = 'Tooltip';
  static String route = '/ui/Tooltip';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('长按以下Icon'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Tooltip(
                message: 'High quality',
                child: IconButton(
                  icon: Icon(Icons.high_quality),
                  onPressed: () {
                    /** */
                  },
                ),
              ),
              Tooltip(
                message: 'Full screen',
                child: IconButton(
                  icon: Icon(Icons.fullscreen),
                  onPressed: () {
                    /** */
                  },
                ),
              ),
              Tooltip(
                message: 'Filter',
                child: IconButton(
                  icon: Icon(Icons.filter),
                  onPressed: () {
                    /** */
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/tooltip_widget.dart';
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
