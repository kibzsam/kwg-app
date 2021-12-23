import 'package:kwg/config/ServiceLocator.dart';
import 'package:kwg/network/ApiResult.dart';
import 'package:kwg/network/NetworkClient.dart';

class PostDataProvider {
  Future<ApiResult> getPosts() async {
    try {
      final results = await locator!<NetworkClient>().allPosts.get('comments');
      return ApiResult.success(data: results);
    } catch (e) {
      throw e;
    }
  }
}
