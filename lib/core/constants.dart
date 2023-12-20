// ignore_for_file: constant_identifier_names

part of 'core.dart';

class AppConstants {
  static const String baseUrl = "https://app.x.ir/api";
  static const String token = "token";
  static const String refresh = "refresh";
  static const String userType = "userType";
  static const String language = "language";

}

// void setData(final String key, final dynamic value) => GetStorage().write(key, value);

// int? getInt(final String key) => GetStorage().read(key);

// String? getString(final String key) => GetStorage().read(key);

// bool? getBool(final String key) => GetStorage().read(key);

// double? getDouble(final String key) => GetStorage().read(key);

// dynamic getData(final String key) => GetStorage().read(key);

// void clearData() => GetStorage().erase();

// enum PostType {all,text,voice,video,image,unknown}
enum UserType {student,teacher,manager,unknow}
