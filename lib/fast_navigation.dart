import 'package:flutter/material.dart';

void navigate(BuildContext context, Widget target) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => target));
}
