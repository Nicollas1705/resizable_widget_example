import 'all_exports.dart';

// The example
class ResizableExample extends StatefulWidget {
  const ResizableExample({Key? key}) : super(key: key);

  @override
  State<ResizableExample> createState() => _ResizableExampleState();
}

class _ResizableExampleState extends State<ResizableExample> {
  // The controller (required)
  final controller = ResizableController(
    // splitDirection: Axis.vertical,
    sizeSeparator: 600,
  );

  // The screens (required)
  late final ResizableScreen screen1;
  late final ResizableScreen screen2;

  @override
  void initState() {
    super.initState();

    // Initializing the screen1
    screen1 = ResizableScreen(
      minSize: 150,
      beginningSize: 160,
      // fixedSizeWhenResizingWindow: true,
      // screenBuilder: () => Container(color: Colors.red),
      // percentSize: 0.01,

      // The screen builder
      screenBuilder: () => Screen1(
        screen1: screen1,
        screen2: screen2,
        controller: controller,
        mainContext: context,
      ),
    );

    // Initializing the screen2
    screen2 = ResizableScreen(
      minSize: 300,
      // beginningSize: 100,
      // fixedSizeWhenResizingWindow: true,

      // The screen builder
      screenBuilder: () => Screen2(
        screen1: screen1,
        controller: controller,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ResizableWidget(
        controller: controller,
        screen1: screen1,
        screen2: screen2,

        // resizableBarDecoration: const BoxDecoration(
        //   color: Colors.amber,
        // ),
        // dragOnLongPress: true,
      ),
    );
  }
}
