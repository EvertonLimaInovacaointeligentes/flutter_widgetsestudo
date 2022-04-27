import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup_menu_button/columns/columns.dart';

class DialogPadrao extends Dialog {
  DialogPadrao(BuildContext context,String title)
      : super(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            width: 300,
            height: 300,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(title.toString()),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0,left:240.0 ),
                    child: Text('X'),
                  ),
                ),
              ],
            ),
          ),
        );
}
