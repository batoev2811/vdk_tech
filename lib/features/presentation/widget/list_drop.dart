import 'package:flutter/material.dart';

class ListDrop extends StatelessWidget{
  const ListDrop({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Material(child: ListDropState(),);
  }
}

class ListDropState extends StatefulWidget{
  const ListDropState({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _ListDropState();
  }
}

class _ListDropState extends State<ListDropState>{
  @override
  Widget build(BuildContext context) {
    return Row(
      
    );
  }
  
}

