import 'package:flutter/material.dart';
import 'package:flutter_tech_test/ui/create/create_page.dart';
import 'package:flutter_tech_test/ui/detail/detail_page.dart';
import 'package:flutter_tech_test/ui/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: Text('list employee'),

              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Get.to(() => CreateEmployeePage());
                },
                child: Icon(Icons.add),
              ),
              body: controller.isLoading == false
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Selamat datang',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                          Column(
                            children: controller.employee!.data!
                                .map((e) => Card(
                                      elevation: 1,
                                      child: InkWell(
                                        onTap: () {
                                          Get.to(() => DetailPage(),
                                              arguments: e.id);
                                        },
                                        child: ListTile(
                                          title: Text(e.name ?? ''),
                                          subtitle: Text(e.nik ?? ''),
                                          trailing: Text(e.position ?? ''),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            ));
  }
}
