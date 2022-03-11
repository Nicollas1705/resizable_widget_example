import 'all_exports.dart';

// An example of any page
class PageX extends StatelessWidget {
  const PageX({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page X")),
      body: Container(
        color: Colors.red[50],
      ),
    );
  }
}