import 'package:admin_desktop/src/core/constants/constants.dart';
import 'package:admin_desktop/src/core/di/injection.dart';
import 'package:admin_desktop/src/models/response/close_day_response.dart';
import 'package:admin_desktop/src/models/response/table_info_response.dart';
import 'package:admin_desktop/src/models/response/table_statistic_response.dart';
import 'package:admin_desktop/src/models/response/working_day_response.dart';
import 'package:admin_desktop/src/repository/table_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/handlers/handlers.dart';
import '../../core/utils/utils.dart';
import '../../models/data/table_data.dart';
import '../../models/models.dart';
import '../../models/response/table_bookings_response.dart';
import '../../models/response/table_response.dart';

class TableRepositoryIml extends TableRepository {
  @override
  Future<ApiResult<ShopSection>> createNewSection(
      {required String name, required num area}) async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.post(
        '/api/v1/dashboard/seller/shop-sections',
        queryParameters: {
          "area": area,
          "images": [],
          "title": {LocalStorage.instance.getActiveLocale(): name}
        },
      );
      return ApiResult.success(
          data: ShopSection.fromJson(response.data["data"]));
    } catch (e) {
      debugPrint('==> get createNewSection failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<ShopSectionResponse>> getSection({int? page}) async {
    final data = {
      if (page != null) 'page': page,
      'perPage': 50,
      'lang': LocalStorage.instance.getActiveLocale(),
    };
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.get(
        '/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/shop-sections',
        queryParameters: data,
      );
      return ApiResult.success(
        data: ShopSectionResponse.fromJson(response.data),
        // data: TableResponse.fromJson(mapData),
      );
    } catch (e) {
      debugPrint('==> get getSection failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<dynamic>> createNewTable(
      {required TableModel tableModel}) async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      await client.post(
        '/api/v1/dashboard/seller/tables',
        queryParameters: tableModel.toJson(),
      );
      return const ApiResult.success(data: null);
    } catch (e) {
      debugPrint('==> get createNewTable failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<TableResponse>> getTables({
    int? page,
    int? shopSectionId,
    String? type,
    DateTime? from,
    DateTime? to,
  }) async {
    from ??= from ?? DateTime.now();
    to ??= to ?? DateTime.now();
      from=from.subtract(const Duration(days: 1));
    final data = {
      if (page != null) 'page': page,
      'perPage': 10,
      'lang': LocalStorage.instance.getActiveLocale(),
      if (type != null) 'status': type,
      if (shopSectionId != null) "shop_section_id": shopSectionId,
      if (type != null && type != TrKeys.available)
      "date_from": from.toString().substring(0, from.toString().indexOf(" ")),
      if (type != null  && type != TrKeys.available)
      "date_to": to.toString().substring(0, to.toString().indexOf(" ")),
    };
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.get(
        '/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/tables',
        queryParameters: data,
      );
      return ApiResult.success(
        data: TableResponse.fromJson(response.data),
      );
    } catch (e) {
      debugPrint('==> get getTableInfo failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<TableBookingResponse>> getTableOrders({
    int? page,
    int? id,
    String? type,
    DateTime? from,
    DateTime? to,
  }) async {
    from =from ?? DateTime.now();
    if( to != null){
        from=from.subtract(const Duration(days: 1));
    }

    final data = {
      if (page != null) 'page': page,
      'lang': LocalStorage.instance.getActiveLocale(),
      if (type != null) 'status': type,
        "start_from":
            from.toString().substring(0, from.toString().indexOf(" ")),
      if (to != null)
        "start_to": to.toString().substring(0, to.toString().indexOf(" ")),
    };
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.get(
        '/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/user-bookings',
        queryParameters: data,
      );
      return ApiResult.success(
        data: TableBookingResponse.fromJson(response.data),
        // data: TableResponse.fromJson(mapData),
      );
    } catch (e,s) {
      debugPrint('==> get getTableOrders failure: $e,$s');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<TableResponse>> deleteSection(int id) async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.delete(
        '/api/v1/dashboard/seller/shop-sections/delete',
        queryParameters: {"ids[0]": id},
      );
      return ApiResult.success(
        data: TableResponse.fromJson(response.data),
      );
    } catch (e) {
      debugPrint('==> get deleteSection failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<TableResponse>> deleteTable(int id) async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.delete(
        '/api/v1/dashboard/seller/tables/delete',
        queryParameters: {"ids[0]": id},
      );
      return ApiResult.success(
        data: TableResponse.fromJson(response.data),
      );
    } catch (e) {
      debugPrint('==> get deleteTable failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<List<DisableDates>>> disableDates({
    required DateTime dateTime,
    required int? id,
  }) async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.get(
        '/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/disable-dates/table/$id',
        queryParameters: {
          'lang': LocalStorage.instance.getActiveLocale(),
          "date_from": DateFormat("yyyy-MM-dd").format(dateTime),
        },
      );
      return ApiResult.success(data: disableDatesFromJson(response.data));
    } catch (e) {
      debugPrint('==> get disableDates failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<BookingsResponse>> getBookings({int? page}) async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.get(
        '/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/bookings',
        queryParameters: {
          'lang': LocalStorage.instance.getActiveLocale(),
          'page': page,
          'perPage': 100
        },
      );
      return ApiResult.success(data:  BookingsResponse.fromJson(response.data));
    } catch (e) {
      debugPrint('==> get getBookings failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<dynamic>> setBookings({
    int? bookingId,
    int? tableId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      await client.post(
        '/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/user-bookings',
        data: {
          'booking_id': bookingId,
          'end_date':
              DateFormat("yyyy-MM-dd HH:mm").format(endDate ?? DateTime.now()),
          'start_date': DateFormat("yyyy-MM-dd HH:mm")
              .format(startDate ?? DateTime.now()),
          "table_id": tableId
        },
      );
      return const ApiResult.success(data: null);
    } catch (e) {
      debugPrint('==> get setBookings failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<WorkingDayResponse>> getWorkingDay() async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.get(
        '/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/booking/shop-working-days/${  LocalStorage.instance.getUser()?.role == TrKeys.waiter?LocalStorage.instance.getUser()?.invite?.shopId:LocalStorage.instance.getUser()?.shop?.uuid}',
        queryParameters: {'lang': LocalStorage.instance.getActiveLocale()},
      );
      return ApiResult.success(
          data: WorkingDayResponse.fromJson(response.data));
    } catch (e) {
      debugPrint('==> get getWorkingDay failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<CloseDayResponse>> getCloseDay() async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.get(

        '/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/booking/shop-closed-dates/${ LocalStorage.instance.getUser()?.role == TrKeys.waiter?LocalStorage.instance.getUser()?.invite?.shopId:LocalStorage.instance.getUser()?.shop?.uuid}',
        queryParameters: {'lang': LocalStorage.instance.getActiveLocale()},
      );
      return ApiResult.success(data: CloseDayResponse.fromJson(response.data));
    } catch (e) {
      debugPrint('==> getCloseDay failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<TableInfoResponse>> getTableInfo(int id) async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.get(
        '/api/v1/dashboard/seller/user-bookings/$id',
        queryParameters: {'lang': LocalStorage.instance.getActiveLocale()},
      );
      return ApiResult.success(data: TableInfoResponse.fromJson(response.data));
    } catch (e) {
      debugPrint('==> getTableInfo failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult> changeOrderStatus(
      {required String status, required int id}) async {
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      await client.post(
        '/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/user-booking/status/$id',
        queryParameters: {'status': status},
      );
      return const ApiResult.success(data: null);
    } catch (e) {
      debugPrint('==> changeOrderStatus failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<ApiResult<TableStatisticResponse>> getStatistic({
    DateTime? from,
    DateTime? to,
  }) async {
    from ??= from ?? DateTime.now();
    to ??= to ?? DateTime.now();
      from=from.subtract(const Duration(days: 1));


    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client
          .get('/api/v1/dashboard/${LocalStorage.instance.getUser()?.role}/table/statistic', queryParameters: {
        "date_from":
            from.toString().substring(0, from.toString().indexOf(" ")),
        "date_to": to.toString().substring(0, to.toString().indexOf(" ")),
      });
      return ApiResult.success(
          data: TableStatisticResponse.fromJson(response.data));
    } catch (e) {
      debugPrint('==> get Statistic failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
