// import 'dart:developer';
// import 'dart:io';
//
// import 'package:dio/dio.dart' as dio;
// import 'package:dream_task/controller/constants/app_strings.dart';
// import 'package:dream_task/controller/services/local/lang_locale.dart';
// import 'package:get/get.dart';
// import 'package:path_provider/path_provider.dart';
//
// class HttpService extends GetxService {
//   static const baseUrl = '';
//
//   final dio.Dio _dio = dio.Dio();
//
//   Future<HttpService> init() async {
//     _dio.options.baseUrl = baseUrl;
//     return this;
//   }
//
//   Future<dio.Response> post(endPoint, body, [upload = false]) async {
//     if (upload) _dio.options.connectTimeout = 5000;
//     log('URL ${baseUrl + endPoint}');
//     log(body.toString());
//     var _response = await _dio.post(baseUrl + endPoint,
//         data: body, options: _requestOption);
//     return _response;
//   }
//
//   Future<dio.Response> get(endPoint, [params = '']) async {
//     log('URL ${baseUrl + endPoint + params}');
//
//     var _response = await _dio.get(
//       baseUrl + endPoint + params,
//       options: _requestOption,
//     );
//
//     return _response;
//   }
//
//   Future<dio.Response> delete(endPoint, [params = '']) async {
//     log('URL ${baseUrl + endPoint + params}');
//
//     var _response = await _dio.delete(
//       baseUrl + endPoint + params,
//       options: _requestOption,
//     );
//
//     return _response;
//   }
//
//   Future<File> download(String url) async {
//     log('DOWNLOAD URL $url');
//     var tempDir = await getTemporaryDirectory();
//     String fullPath = tempDir.path + '/' + url.split('/').last;
//     log('File name $fullPath');
//     bool isExist = await File(fullPath).exists();
//
//     if (isExist) {
//       return File(fullPath);
//     }
//     var _response = await _dio.get(
//       url,
//       options: dio.Options(
//           responseType: dio.ResponseType.bytes, followRedirects: false),
//     );
//     File file = File(fullPath);
//     var raf = file.openSync(mode: FileMode.write);
//     raf.writeFromSync(_response.data);
//     await raf.close();
//
//     return file;
//   }
//
//   Future<dio.FormData> imgFormData(List<File> imgFiles) async {
//     dio.FormData formData = dio.FormData.fromMap({});
//     for (int i = 0; i < imgFiles.length; i++) {
//       log('file-${i + 1}');
//       log(imgFiles[i].path);
//       formData.files.addAll([
//         MapEntry('file-${i + 1}',
//             await dio.MultipartFile.fromFile(imgFiles[i].path)),
//       ]);
//     }
//     return formData;
//   }
//
//   dio.Options get _requestOption => dio.Options(
//         headers: {
//           AppStrings.authorization: 'Bearer ${AppStrings.token}',
//           AppStrings.accept: AppStrings.applicationJson,
//           AppStrings.lang: Lang.instance.isEn ? AppStrings.en : AppStrings.ar,
//         },
//       );
// }
