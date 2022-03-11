import 'all_exports.dart';

class Screen1 extends StatelessWidget {
  const Screen1({
    Key? key,
    required this.screen1,
    required this.screen2,
    required this.controller,
    required this.mainContext,
  }) : super(key: key);

  final ResizableController controller;
  final ResizableScreen screen1;
  final ResizableScreen screen2;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(mainContext);
          },
        ),
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
        title: const Text("Screen1"),
      ),
      body: Center(
        child: Container(
          color: Colors.lightGreen[50],
          child: Column(
            children: [
              LayoutBuilder(builder: (context, constraints) {
                return Text(constraints.maxWidth.toString());
              }),
              Container(
                width: 150,
                height: 20,
                color: Colors.amber,
                child: const Center(child: Text("< 150px >")),
              ),
              const Divider(),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 100,
                  separatorBuilder: (context, i) => const Divider(),
                  itemBuilder: (context, i) {
                    return ListTile(
                      title: Text("Content ${i + 1}"),
                      onTap: () {
                        screen2.popAll();
                        // If is showing both screens, needs to manipulate the [screen2]
                        if (controller.isShowingBothScreens) {
                          navigatorPush(
                            screen2.key.currentContext!,
                            (context) => ScreenContent(
                              screen: screen2,
                              index: i,
                            ),
                          );
                        } else {
                          navigatorPush(
                            screen1.key.currentContext!,
                            (context) => ScreenContent(
                              screen: screen1,
                              index: i,
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
