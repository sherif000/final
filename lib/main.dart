import 'package:flutter/material.dart';
import 'package:location/store/controller/store_provider/store_provider_provider.dart';
import 'package:location/store/view/store_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>Store_providerProvider()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
home: StoreScreen(),
      ),
    );
  }
}
