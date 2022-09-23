import 'package:flutter/material.dart';
class GetBoxOffset extends StatefulWidget {
  final Widget child;
  final Function(Offset offset)? offset;
  const GetBoxOffset({Key? key, required this.child, this.offset}) : super(key: key);

  @override
  State<GetBoxOffset> createState() => _GetBoxOffsetState();
}

class _GetBoxOffsetState extends State<GetBoxOffset> {
  GlobalKey widgetKey = GlobalKey();
  Offset offset = Offset(0.0, 0.0);
@override
  void initState() {
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    final box = widgetKey.currentContext!.findRenderObject() as RenderBox;
    offset = box.localToGlobal(Offset.zero);
    widget.offset!(offset);
  });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widgetKey,
        child: widget.child,
    );
  }
}
