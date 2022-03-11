import 'resizable_example/all_exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      // theme: ThemeData.dark(),
      // themeMode: ThemeMode.dark,
      home: const MyHomePage(),
      // home: const MasksTest(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                navigatorPush(
                  context,
                  (context) => const ResizableExample(),
                );
              },
              child: const Text("Resizable - example"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                navigatorPush(
                  context,
                  (context) => SimpleExample(context),
                );
              },
              child: const Text("Resizable - simple example"),
            ),
          ],
        ),
      ),
    );
  }
}
