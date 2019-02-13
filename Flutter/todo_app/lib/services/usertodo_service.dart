
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:todo_app/model/usertodo_model.dart';

String sumuri = "10.0.2.2:5001"; //This is the alias back to your machine localhost for a emulated device.
//String sumUrl = 'localhost:5001'; Good for web dev, bad for mobile :(

Future<List<UserTodo>> getAllPost() async {
  try  {
    var localuri = new Uri.http(sumuri, '/api/todotask');
    final response = await http.get(localuri);
    print(response.body);
    return allPostsFromJson(response.body);

  } catch (e) {
    print(e.toString());
    throw new Exception(e.toString());
  }
}