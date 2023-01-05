import 'package:flutter/material.dart';
import 'package:flutter_tech_test/ui/detail/detail_controller.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      init: DetailController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text('Detail'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
            ),
          ],
        ),
        body: controller.isLoading==false?Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                Text(controller.detailEmployee?.data?.name ?? '',style: TextStyle(color: Colors.black,fontSize: 16)),
                const SizedBox(height: 8,),
                Text(controller.detailEmployee?.data?.nik ?? '',style: TextStyle(color: Colors.black,fontSize: 16)),
                const SizedBox(height: 8,),
                Text(controller.detailEmployee?.data?.position ?? '',style: TextStyle(color: Colors.black,fontSize: 16)),
              ],
            ),
          ),
        ):Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}
