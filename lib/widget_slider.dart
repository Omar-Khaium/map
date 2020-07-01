import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabSlideChoose extends StatefulWidget {
  final ValueChanged<int> selection;
  final List<String> names;


  TabSlideChoose({@required this.names, @required this.selection});

  @override
  State<StatefulWidget> createState() {
    return _TabSlideChooseState();
  }
}

class _TabSlideChooseState extends State<TabSlideChoose> {
  var _selected = 0;
  List<Tab> rows = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.all(Radius.circular(72))),
      child: Center(
        child: DefaultTabController(
          length: widget.names.length,
          child: TabBar(
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(72),
                color: Colors.white),
            tabs: _tabs(widget.names, context),
            onTap: (value) {
              setState(() {
                _selected = value;
                widget.selection(value);
              });
            },
          ),
        ),
      ),
    );
  }


  List<Tab> _tabs(List<String> names, BuildContext context) {
    rows.clear();
    for (var tab = 0; tab < names.length; tab++) {
      rows.add(
        Tab(
            child: Text(
              names[tab],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1.copyWith(color:
              Colors.black, fontWeight: _selected==tab ?  FontWeight.bold :
                  FontWeight.normal)
            )),
      );
    }
    return rows;
  }
}