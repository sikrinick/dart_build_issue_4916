import 'package:b/test_class_mappable.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'test_class_retrofit_generator.g.dart';

@RestApi()
abstract class TestApi {
  factory TestApi(Dio dio) = _TestApi;

  @GET('/test')
  Future<TestClass> getTest(TestClass body);
}
