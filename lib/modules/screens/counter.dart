import 'package:state_management_provider/packages/packages.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final counterValue = context.watch<CounterModel>().count;

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counterValue', 
                style: TextStyle(
                  fontSize: 72, 
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => context.read<CounterModel>().increment(),
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () => context.read<CounterModel>().decrement(),
                child: Icon(Icons.minimize),
              ),
            ],
          )
        ],
      ),
    );
  }
}
