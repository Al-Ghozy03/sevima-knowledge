import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:sevima_knowledge/models/category_model.dart';

String baseUrl = "http://192.168.137.1:5000/api";
final storage = GetStorage();

class ApiService {
 static Future<CategoryModel> getCategory() async {
    Uri url = Uri.parse("$baseUrl/category");
    final res = await http.get(url,
        headers: {"Authorization": "Bearer ${storage.read("token")}"});
    if (res.statusCode == 200) {
      return categoryModelFromJson(res.body);
    } else {
      print(res.body);
      throw Exception("Something went wrong");
    }
  }
}
