import 'package:admin_desktop/src/core/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../core/di/injection.dart';
import '../../core/handlers/handlers.dart';
import '../../core/utils/utils.dart';
import '../../models/models.dart';
import '../repository.dart';

class CategoriesRepositoryImpl extends CategoriesRepository {
  @override
  Future<ApiResult<CategoriesPaginateResponse>> searchCategories(
    String? query,
  ) async {
    final data = {
      'lang': LocalStorage.instance.getActiveLocale(),
      'perPage': 100,
      'type': 'main',
      "has_products": 1,
      "p_shop_id": LocalStorage.instance.getUser()?.role == TrKeys.waiter
          ?
          LocalStorage.instance.getUser()?.invite?.shopId ?? 0
          : LocalStorage.instance.getUser()?.shop?.id ?? 0
    };
    try {
      final client = inject<HttpService>().client(requireAuth: true);
      final response = await client.get(
        LocalStorage.instance.getUser()?.role == TrKeys.seller
            ? '/api/v1/dashboard/seller/categories/paginate'
            : '/api/v1/rest/categories/paginate',
        queryParameters: data,
      );
      return ApiResult.success(
        data: CategoriesPaginateResponse.fromJson(response.data),
      );
    } catch (e) {
      debugPrint('==> get categories failure: $e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
