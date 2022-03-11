import 'all_exports.dart';

class SimpleExample extends StatefulWidget {
  const SimpleExample(
    this.context, {
    Key? key,
  }) : super(key: key);
  final BuildContext context;

  @override
  State<SimpleExample> createState() => _SimpleExampleState();
}

class _SimpleExampleState extends State<SimpleExample> {
  final resizableController = ResizableController(sizeSeparator: 600);
  late final ResizableScreen screen1;
  late final ResizableScreen screen2;

  @override
  void initState() {
    super.initState();

    screen1 = ResizableScreen(
      screenBuilder: () => Scaffold(
        appBar: AppBar(
          title: const Text("Screen 1"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(widget.context);
            },
          ),
        ),
      ),
    );
    screen2 = ResizableScreen(
      screenBuilder: () => Scaffold(
        appBar: AppBar(title: const Text("Screen 2")),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResizableWidget(
      dragOnlyOnLongPress: true,
      controller: resizableController,
      screen1: screen1,
      screen2: screen2,
      resizableBarBackgroundColor: Colors.amberAccent,
    );
  }
}
