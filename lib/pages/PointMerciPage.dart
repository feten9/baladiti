import 'package:baladiti/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
class PointMerciPage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text("bonus pour votre réclamtion",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );

  }

}