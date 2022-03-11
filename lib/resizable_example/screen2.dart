import 'all_exports.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    Key? key,
    required this.screen1,
    required this.controller,
  }) : super(key: key);

  final ResizableController controller;
  final ResizableScreen screen1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen2 (empty)"),
        actions: [
          Tooltip(
            message: "Show/hide screen 2",
            child: IconButton(
              icon: const Icon(Icons.block),
              onPressed: () {
                controller.showScreen2 = !controller.showScreen2;
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.lightBlue[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LayoutBuilder(builder: (context, constraints) {
                  return Text(constraints.maxWidth.toString());
                }),
                Container(
                  width: 300,
                  height: 20,
                  color: Colors.amber,
                  child: const Center(child: Text("< 300px >")),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    navigatorPush(
                      screen1.key.currentContext!,
                      (context) => const Screen1Manipulation()
                    );
                  },
                  child: const Text("Screen 1 manipulation"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
