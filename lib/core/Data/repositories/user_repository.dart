import 'package:dartz/dartz.dart';
import 'package:impty_project/core/Data/models/apis/token_info.dart';
import 'package:impty_project/core/Data/models/common_response.dart';
import 'package:impty_project/core/Data/network/endpoints/user_endpoint.dart';
import 'package:impty_project/core/Data/network/network_config.dart';
import 'package:impty_project/core/enums/request_type.dart';
import 'package:impty_project/core/utils/network_util.dart';

class UserRepository {
  Future<Either<String, TokenInfo>> login({
    required String email,
    required String password,
  }) async {
    try {
      return NetworkUtil.sendRequest(
          type: RequestType.POST,
          url: UserEndpoints.login,
          headers:
              NetworkConfig.getHeaders(needAuth: false, type: RequestType.POST),
          body: {
            'userName': email,
            'password': password,
          }).then((response) {
        CommonResponse<Map<String, dynamic>> commonResponse =
            CommonResponse.fromJson(response);

        if (commonResponse.getStatus) {
          return Right(TokenInfo.fromJson(
            commonResponse.data ?? {},
          ));
        } else {
          return Left(commonResponse.message ?? '');
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
}
