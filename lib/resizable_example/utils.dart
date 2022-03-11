import 'all_exports.dart';

void navigatorPush(
  BuildContext context,
  Widget Function(BuildContext) builder,
) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: builder,
    ),
  );
}