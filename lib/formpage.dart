import 'package:experiments/data_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'list_display_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _dataController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  List<DataModel> dataList = [];

  // void _addToDataList() {
  //   setState(() {
  //     // dataList.add();
  //     // dataList.add(_numberController.text);
  //     // dataList.add(_addressController.text);

  //     _dataController.clear();
  //     _numberController.clear();
  //     _addressController.clear();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ListDisplayPage(dataList));
              },
              icon: const Icon(Icons.visibility))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _dataController,
              decoration: const InputDecoration(labelText: 'Number'),
            ),
            TextField(
              controller: _numberController,
              decoration: const InputDecoration(labelText: 'Number'),
            ),
            TextField(
              controller: _addressController,
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            ElevatedButton(
              onPressed: () {
                DataModel dataModel = DataModel(
                    name: _dataController.text,
                    number: _numberController.text,
                    address: _addressController.text);
                setState(() {
                  dataList.add(dataModel);

                  _dataController.clear();
                  _numberController.clear();
                  _addressController.clear();
                });
              },

              //  _addToDataList,
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
