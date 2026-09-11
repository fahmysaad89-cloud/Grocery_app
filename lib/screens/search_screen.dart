import 'package:flutter/material.dart';
import 'package:gorcery_app/models/product_model.dart';
import 'package:gorcery_app/screens/filter_screen.dart';
import 'package:gorcery_app/screens/widges/search_product_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(Icons.arrow_back_ios_new, size: 18),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _controller,
                      cursorColor: const Color(0xff53B175),
                      onTapOutside: (v) => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF2F3F2),
                        filled: true,
                        hintText: 'Search Store',
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(Icons.search_rounded),
                        ),
                        prefixIconConstraints: const BoxConstraints(
                          maxWidth: 43,
                          minHeight: 40,
                        ),
                        suffixIcon: _controller.text.isEmpty
                            ? null
                            : IconButton(
                                icon: const Icon(Icons.close, size: 18),
                                onPressed: () {
                                  setState(() => _controller.clear());
                                },
                              ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FilterScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F3F2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.tune_rounded, size: 22),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: GridView.builder(
                  itemCount: searchResults.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.8,
                    mainAxisSpacing: 15.04,
                    childAspectRatio: 0.69,
                  ),
                  itemBuilder: (context, index) {
                    return SearchProductItem(product: searchResults[index]);
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

List<ProductModel> searchResults = [
  ProductModel(
    titel: 'Egg Chicken Red',
    discripion: '4pcs, Price',
    image: 'assets/images/Red Egg.png',
    price: 1.80,
  ),
  ProductModel(
    titel: 'Egg Chicken White',
    discripion: '180g, Price',
    image: 'assets/images/White Egg.png',
    price: 1.50,
  ),
  ProductModel(
    titel: 'Egg Pasta',
    discripion: '30gm, Price',
    image: 'assets/images/Egg Pasta.png',
    price: 12.87,
  ),
  ProductModel(
    titel: 'Egg Noodles',
    discripion: '2L, Price',
    image: 'assets/images/Egg Noodles.png',
    price: 15.99,
  ),
  ProductModel(
    titel: 'Mayonnaise Eggless',
    discripion: '250g, Price',
    image: 'assets/images/Mayonnais Eggless.png',
    price: 5.89,
  ),
  ProductModel(
    titel: 'Egg Noodles',
    discripion: '1kg, Price',
    image: 'assets/images/Egg Noodl.png',
    price: 8.69,
  ),
];
