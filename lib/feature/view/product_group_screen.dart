import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/utils/toaster.dart';
import 'package:untitled2/feature/view/widget/product_card.dart';
import '../../core/utils/constants.dart';
import '../viewmodels/product/product_cubit.dart';

class ProductGroupScreen extends StatefulWidget {
  const ProductGroupScreen({super.key});

  @override
  State<ProductGroupScreen> createState() => _ProductGroupScreenState();
}

class _ProductGroupScreenState extends State<ProductGroupScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().fetchProductGroups();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Groups")),
      body: BlocConsumer<ProductCubit, ProductState>(
        listener: (context, state) {
          if (state is ProductFailure) {
            Toaster.showError(context: context, text: state.error);
          }
        },
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductFailure) {
            return const Center(child: Text("Error: no data"));
          } else if (state is ProductSuccess) {
            final productGroups = state.data;
            return GridView.builder(
              padding: const EdgeInsets.all(defaultPadding),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
                childAspectRatio: 0.8,
              ),
              itemCount: productGroups.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  image:
                  "https://images.pexels.com/photos/210019/pexels-photo-210019.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  title: productGroups[index].nameA,
                  code: productGroups[index].code,
                  brandName: productGroups[index].groupName,
                  taxName: productGroups[index].taxName,
                  press: () {},
                );
              },
            );
          }
          return const Center(child: Text("No Data"));
        },
      ),
    );
  }
}
