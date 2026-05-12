import 'package:dart_mappable/dart_mappable.dart';

part 'test_class_mappable.mapper.dart';

@MappableClass()
class TestClass with TestClassMappable {
  final String name;

  const TestClass({required this.name});

  static const TestClass Function(Map<String, dynamic> json) fromJson =
      TestClassMapper.fromJson2;
}
