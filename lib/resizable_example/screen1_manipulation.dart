import 'all_exports.dart';

class Screen1Manipulation extends StatelessWidget {
  const Screen1Manipulation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1 manipulation"),
      ),
      body: Container(
        color: Colors.lightGreen[50],
        child: Center(
          child: ElevatedButton(
            child: const Text("Next page"),
            onPressed: () {
              navigatorPush(
                context,
                (context) => const PageX(),
              );
            },
          ),
        ),
      ),
    );
  }
}