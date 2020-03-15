import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(DemoState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('Demo App'),
    ),
    body: Center(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Center(
              child: Text(
            "Counter: ${state.counter}",
            style: TextStyle(
                color: state.counter >= 0 ? Colors.blue : Colors.red,
                fontSize: 32),
          )),
          SizedBox(
            width: 15,
            height: 15,
          ),
          RaisedButton(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            color: Colors.green,
            child: Text(
              '+',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              dispatch(DemoActionCreator.onTapPlus());
            },
          ),
          RaisedButton(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            color: Colors.green,
            child: Text(
              '-',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              dispatch(DemoActionCreator.onTapMinus());
            },
          ),
        ],
      ),
    ),
  );
}
