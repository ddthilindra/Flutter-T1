import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:list2/themes/color.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List users = [];
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
    DEPData();
    this.fetchUser();

  }
  fetchUser() async {
    setState(() {
      isLoading = true;
    });

    // var response = await http.get(
    //     Uri.http('https://randomuser.me/api/?results=50'),
    //     headers: <String, String>{
    //       'Content-Type': 'application/json; charset=UTF-8',
    //     });

    // var url = "https://randomuser.me/api/?results=50";
    // var response = await http.get(url);


    // print(response.body);
    // if(response.statusCode == 200){
    //   var items = json.decode(response.body)['results'];
    //   setState(() {
    //     users = items;
    //     isLoading = false;
    //   });
    // }else{
    //   users = [];
    //   isLoading = false;
    // }
  }
var dataDepOriginal=[];
    Future DEPData() async {
    try {
      var response = await Dio().get(
          // 'http://ec2-18-236-186-25.us-west-2.compute.amazonaws.com:8000/filter/redMedicaFilteredBy/DEPARTAMENTO');
          'http://ec2-35-83-63-15.us-west-2.compute.amazonaws.com:8000/admin/getAllCategories');
      if (response.statusCode == 200) {
        setState(() {
          dataDepOriginal = response.data["data"];
           print("dataDEP: $dataDepOriginal" );
        });
         print(dataDepOriginal);
      } else {

        throw Exception('Failed to load post');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing Users"),
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    if(users.contains(null) || users.length < 0 || isLoading){
      return Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(primary),));
    }
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context,index){
      return getCard(users[index]);
    });
  }


  
  Widget getCard(item){
    var fullName = item['name']['title']+" "+item['name']['first']+" "+item['name']['last'];
    var email = item['email'];
    var profileUrl = item['picture']['large'];
    return Card(
      elevation: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(60/2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(profileUrl)
                  )
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width-140,
                    child: Text(fullName,style: TextStyle(fontSize: 17),)),
                  SizedBox(height: 10,),
                  Text(email.toString(),style: TextStyle(color: Colors.grey),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}