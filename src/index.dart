import 'package:fetch_client/fetch_client.dart';
import 'package:pub_api_client/pub_api_client.dart';

final client = PubClient(client: FetchClient());

void main() async {
  final response = await client.packageInfo('puby');
  print(response.description);
}
