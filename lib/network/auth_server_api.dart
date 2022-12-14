import 'package:dio/dio.dart';
import 'package:flutter_pixel_project/data/model/api/get_orders/OrdersResponse.dart';
import 'package:flutter_pixel_project/data/model/api/response/TokenResponse.dart';
import 'package:flutter_pixel_project/data/model/order_details/OrderDetails.dart';
import 'package:flutter_pixel_project/data/model/request/auth_request.dart';
import 'package:flutter_pixel_project/network/interceptor/oauth_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_server_api.g.dart';

@RestApi(baseUrl: "https://gad24.tools/api")
abstract class AuthRestClient {
  factory AuthRestClient({required String baseUrl}) {
    Dio dio = Dio();

    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));

    dio.options = BaseOptions(receiveTimeout: 50000, connectTimeout: 50000);
    return _AuthRestClient(dio, baseUrl: baseUrl);
  }

  @POST("/v2/auth/login")
  Future<TokenResponse> authenticate(@Body() AuthRequest authRequest);
}