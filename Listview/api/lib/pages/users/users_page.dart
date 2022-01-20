import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'users_controller.dart';
class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: Container(
        child: GetBuilder<UsersController>(
          builder: (controller) {
            return Center(
              child: Text(
                controller.usersList.length.toString(),
                style: TextStyle(fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}