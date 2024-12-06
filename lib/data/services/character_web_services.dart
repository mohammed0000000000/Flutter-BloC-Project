import 'package:dio/dio.dart';

import '../../constants/strings.dart';
class CharacterWebServices{
  late Dio dio;
  CharacterWebServices(){
    BaseOptions baseOptions = new BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(
        seconds: 30
      ),
      receiveTimeout:const Duration(
        seconds: 30
      ),
    );
    dio = new Dio(baseOptions);
  }
  // a `Future` --> represents a value that will be available at some
  //    point in the future after an asynchronous operation completes
  Future<List<dynamic>> getAllCharacter() async {
    try{
      Response response = await dio.get("characters");
      print(response.data.toString());
      return response.data;
    }
    catch(e){
      print("error when fetching character ${e.toString()}");
      return List.empty();
    }
  }
}