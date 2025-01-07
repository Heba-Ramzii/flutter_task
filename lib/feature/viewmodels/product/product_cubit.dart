import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:untitled2/feature/model/product_group_model.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> fetchProductGroups() async {
    emit(ProductLoading());
    try {
      final dio = Dio();
      String? token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiQWxpIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIxMiIsIkxhbmdJZCI6IjEiLCJPdXRlciI6IjAiLCJDb2RlIjoiZGF0YSBzb3VyY2U9MTY5LjYzLjc1LjY5O2luaXRpYWwgY2F0YWxvZz1NYXplblRlc3Q7VXNlciBJRD1zYTtQYXNzd29yZD0jVmJAeHk2NzgkJV5uITRMNSVAITtNdWx0aXBsZUFjdGl2ZVJlc3VsdFNldHM9VHJ1ZTtUcnVzdGVkX0Nvbm5lY3Rpb249RmFsc2U7VHJ1c3RTZXJ2ZXJDZXJ0aWZpY2F0ZT1UcnVlO0Nvbm5lY3RSZXRyeUNvdW50PTA7IE1heCBQb29sIFNpemU9MTAyNCIsIlBhcnRuZXJDb2RlIjoidUtEalJsL3k1dmc9IiwiRHJpdmVySWQiOiIxMDAwMDAwNDMiLCJDb21wYW55SWQiOiI4IiwiQnJhbmNoSWQiOiI5IiwiRmluYW5jaWFsWWVhciI6IjEwMDAwMDA2MyIsIkVtcGxveWVlSWQiOiIxMDAwMDAwNjUiLCJFUlBVc2VySWQiOiIwIiwiRHJpdmVyTmFtZSI6Iti52YTZiiIsIkRyaXZlckEiOiLYudmE2YoiLCJEcml2ZXJFIjoiQWxpIiwiRW1wbG95ZWVOYW1lIjoi2LnZhNmKIiwiRW1wbG95ZWVBIjoi2LnZhNmKIiwiRW1wbG95ZWVFIjoiQWxpIiwiRVJQVXNlck5hbWUiOiIiLCJFUlBVc2VyQSI6IiIsIkVSUFVzZXJFIjoiIiwiTW9iaWxlVXNlck5hbWUiOiLYudmE2YoiLCJNb2JpbGVVc2VyQSI6Iti52YTZiiIsIk1vYmlsZVVzZXJFIjoiQWxpIiwiRGVmYXVsdF9Db21wYW55SWQiOiIwIiwiRGVmYXVsdF9CcmFuY2hJZCI6IjAiLCJEZWZhdWx0X0ZpbmFuY2lhbFllYXJJZCI6IjAiLCJTaG93X1RyYW5zcG9ydGF0aW9uX0N1cnJlbnRfV2F5YmlsbCI6IjEiLCJTaG93X1RyYW5zcG9ydGF0aW9uX1dheWJpbGxfTG9nIjoiMSIsIlNob3dfVHJhbnNwb3J0YXRpb25fRHJpdmVyX0R1ZXMiOiIxIiwiU2hvd19IdW1hbl9SZXNvdXJjZXNfSG9saWRheV9SZXF1ZXN0IjoiMSIsIlNob3dfSHVtYW5fUmVzb3VyY2VzX0hvbGlkYXlfTG9nIjoiMSIsIlNob3dfSHVtYW5fUmVzb3VyY2VzX0hvbGlkYXlfQmFsYW5jZSI6IjEiLCJTaG93X0h1bWFuX1Jlc291cmNlc19Mb2FuX1JlcXVlc3QiOiIxIiwiU2hvd19IdW1hbl9SZXNvdXJjZXNfTG9hbl9Mb2ciOiIxIiwiU2hvd19IdW1hbl9SZXNvdXJjZXNfTG9hbl9CYWxhbmNlIjoiMSIsIlNob3dfSHVtYW5fUmVzb3VyY2VzX0RlbGF5UGVybWlzc2lvbiI6IjEiLCJTaG93X0h1bWFuX1Jlc291cmNlc19EZXJhdHVyZVBlcm1pc3Npb24iOiIxIiwiU2hvd19IdW1hbl9SZXNvdXJjZXNfQWJzZW5jZSI6IjEiLCJTaG93X0h1bWFuX1Jlc291cmNlc19FbXBTdGF0ZW1lbnQiOiIxIiwiU2hvd19IdW1hbl9SZXNvdXJjZXNfRW1wTG9hblN0YXRlbWVudCI6IjEiLCJTaG93X0h1bWFuX1Jlc291cmNlc19BdHRlbmRhbmNlRGVwYXJ0dXJlIjoiMSIsIlNob3dfSHVtYW5fUmVzb3VyY2VzX0FkZExvY2F0aW9uIjoiMCIsIlNob3dfU2V0dGluZ19EZXRlcm1pbmVfTG9jYXRpb24iOiIxIiwiU2hvd19TZXR0aW5nX0NoYW5nZV9MYW5ndWFnZSI6IjEiLCJTaG93X1NhbGVzUmV0YWlsX0ludm9pY2UiOiIxIiwiU2hvd19TYWxlc1JldGFpbF9DdXN0b21lcnMiOiIxIiwiU2hvd19TYWxlc1JldGFpbF9JdGVtc0dyb3VwcyI6IjEiLCJTaG93X1NhbGVzUmV0YWlsX0l0ZW1zIjoiMSIsIlNob3dfU2FsZXNSZXRhaWxfRGlzY291bnRUeXBlcyI6IjEiLCJTaG93X0FsZXJ0X09uX0F1dG9fQXJyaXZlZF9BdF9QaWNrX3VwX0xvY2F0aW9uIjoiMCIsIlNob3dfQWxlcnRfT25fQXV0b19BcnJpdmVkX0F0X0RlbGl2ZXJ5X0xvY2F0aW9uIjoiMCIsIlNob3dfQWxlcnRfT25fQ29tcGxldGVkX1RpcF9XaXRob3V0X1JlY2lwaWVudF9TaWduaW5nIjoiMCIsIlNob3dfUHJvZHVjdF9Hcm91cHMiOiIxIiwiZXhwIjoxNzM2MzI0OTExLCJpc3MiOiJDaGFtZWxlb24iLCJhdWQiOiJBbGxXb3JsZCJ9.AArBmuhC8Wx-Zru8eMTCOeUzANlscK3ySmsbAyORr3A";

        if (token == null) {
          emit(ProductFailure("Token expired and could not be refreshed."));
          return;
        }

      final response = await dio.get(
        "http://92.205.160.52:1090/API/Retail/ProductGroups/GetAll",
        queryParameters: {'Lang': 1},
        options: Options(headers: {
          'Authorization': "Bearer $token",
        }),
      );

      if (response.statusCode == 200 && response.data != null) {
        final productGroups = (response.data['data'] as List<dynamic>)
            .map((item) => ProductGroupModel.fromJson(item))
            .toList();
        emit(ProductSuccess(productGroups));
      } else {
        emit(ProductFailure("Invalid response structure or data is null"));
      }
    } catch (e) {
      if (e is DioError) {
        emit(ProductFailure("Network error: ${e.message}"));
      } else {
        emit(ProductFailure("Unexpected error: ${e.toString()}"));
      }
    }
  }
}
