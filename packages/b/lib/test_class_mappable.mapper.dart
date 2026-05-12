// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'test_class_mappable.dart';

class TestClassMapper extends ClassMapperBase<TestClass> {
  TestClassMapper._();

  static TestClassMapper? _instance;
  static TestClassMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TestClassMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TestClass';

  static String _$name(TestClass v) => v.name;
  static const Field<TestClass, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<TestClass> fields = const {#name: _f$name};

  static TestClass _instantiate(DecodingData data) {
    return TestClass(name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static TestClass fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TestClass>(map);
  }

  static TestClass fromJson(String json) {
    return ensureInitialized().decodeJson<TestClass>(json);
  }
}

mixin TestClassMappable {
  String toJson() {
    return TestClassMapper.ensureInitialized().encodeJson<TestClass>(
      this as TestClass,
    );
  }

  Map<String, dynamic> toMap() {
    return TestClassMapper.ensureInitialized().encodeMap<TestClass>(
      this as TestClass,
    );
  }

  TestClassCopyWith<TestClass, TestClass, TestClass> get copyWith =>
      _TestClassCopyWithImpl<TestClass, TestClass>(
        this as TestClass,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TestClassMapper.ensureInitialized().stringifyValue(
      this as TestClass,
    );
  }

  @override
  bool operator ==(Object other) {
    return TestClassMapper.ensureInitialized().equalsValue(
      this as TestClass,
      other,
    );
  }

  @override
  int get hashCode {
    return TestClassMapper.ensureInitialized().hashValue(this as TestClass);
  }
}

extension TestClassValueCopy<$R, $Out> on ObjectCopyWith<$R, TestClass, $Out> {
  TestClassCopyWith<$R, TestClass, $Out> get $asTestClass =>
      $base.as((v, t, t2) => _TestClassCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TestClassCopyWith<$R, $In extends TestClass, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name});
  TestClassCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TestClassCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TestClass, $Out>
    implements TestClassCopyWith<$R, TestClass, $Out> {
  _TestClassCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TestClass> $mapper =
      TestClassMapper.ensureInitialized();
  @override
  $R call({String? name}) =>
      $apply(FieldCopyWithData({if (name != null) #name: name}));
  @override
  TestClass $make(CopyWithData data) =>
      TestClass(name: data.get(#name, or: $value.name));

  @override
  TestClassCopyWith<$R2, TestClass, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TestClassCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

