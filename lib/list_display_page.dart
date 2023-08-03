import 'package:experiments/data_model.dart';
import 'package:flutter/material.dart';

class ListDisplayPage extends StatelessWidget {
  final List<DataModel> dataList;

  const ListDisplayPage(this.dataList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Display Page'),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dataList[index].name ??''),
            subtitle: Text(dataList[index].number ??''),
            trailing: Text(dataList[index].address ??''),
          );
        },
      ),
    );
  }
}
