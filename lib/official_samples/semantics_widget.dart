import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateless_widget.dart';

class SemanticsWidget extends BaseSampleStatelessWidget {
  static String name = 'Semantics';
  static String route = '/ui/Semantics';

  @override
  Widget buildBody(BuildContext context) {
    //<code>
    ///用于描述Widget, 属性非常多，
    return Center(
      child: Semantics(
//        bool container = false,
//        bool explicitChildNodes = false,
//        bool excludeSemantics = false,
//        bool enabled,
//        bool checked,
//        bool selected,
//        bool toggled,
//        bool button,
//        bool link,
//        bool header,
//        bool textField,
//        bool readOnly,
//        bool focusable,
//        bool focused,
//        bool inMutuallyExclusiveGroup,
//        bool obscured,
//        bool multiline,
//        bool scopesRoute,
//        bool namesRoute,
//        bool hidden,
//        bool image,
//        bool liveRegion,
//        int maxValueLength,
//        int currentValueLength,
//        String label,
//        String value,
//        String increasedValue,
//        String decreasedValue,
//        String hint,
//        String onTapHint,
//        String onLongPressHint,
//        TextDirection textDirection,
//        SemanticsSortKey sortKey,
//        VoidCallback onTap,
//        VoidCallback onLongPress,
//        VoidCallback onScrollLeft,
//        VoidCallback onScrollRight,
//        VoidCallback onScrollUp,
//        VoidCallback onScrollDown,
//        VoidCallback onIncrease,
//        VoidCallback onDecrease,
//        VoidCallback onCopy,
//        VoidCallback onCut,
//        VoidCallback onPaste,
//        VoidCallback onDismiss,
//        MoveCursorHandler onMoveCursorForwardByCharacter,
//        MoveCursorHandler onMoveCursorBackwardByCharacter,
//        SetSelectionHandler onSetSelection,
//        VoidCallback onDidGainAccessibilityFocus,
//        VoidCallback onDidLoseAccessibilityFocus,
//        Map<CustomSemanticsAction, VoidCallback> customSemanticsActions,
        child: Image.asset('assets/images/app_icon.webp'),
      ),
    );
    //<code>
  }

  @override
  String getFilePath() {
    return 'lib/official_samples/semantics_widget.dart';
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
