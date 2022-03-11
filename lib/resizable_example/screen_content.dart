import 'all_exports.dart';

class ScreenContent extends StatelessWidget {
  const ScreenContent({
    required this.screen,
    required this.index,
    Key? key,
  }) : super(key: key);

  final ResizableScreen screen;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Content - ${index + 1}"),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            screen.popAll();
          },
        ),
      ),
      body: Container(
        color: Colors.lightBlue[50],
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
