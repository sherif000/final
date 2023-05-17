import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:location/store/controller/store_provider/store_provider_provider.dart';
import 'package:location/store/view/ui/store_card.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  Future<void> prepareData() async {
    var store_provider = Provider.of<Store_providerProvider>(context, listen: false);
    await store_provider.store(store_provider.storeModel.id);
  }
@override
  void initState() {
   prepareData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Store_providerProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'A Store', style: TextStyle(
                fontSize: 20,
                color: Colors.black
            ),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
          ),

          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child:(provider.storeModel.name.isEmpty) ?
            Center(child: CircularProgressIndicator(),):
            ListView.builder(
                itemCount: provider.storeModel.name.length,
                itemBuilder: (BuildContext context, int index) {
                  return StoreCard(id: provider.storeModel.id,);

                }),
          )
        );
      },
    );
  }
}
