import 'package:state_management_provider/packages/packages.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CounterModel(), 
    child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Counter(),
    );
  }
}

