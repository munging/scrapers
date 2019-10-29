import 'package:cli/cli.dart' as cli;
import 'package:http/http.dart' as http;

main(List<String> arguments) async {
  print('Hello world: ${cli.calculate()}!');
  print(await http.read('https://github.com/jbampton'));
}
