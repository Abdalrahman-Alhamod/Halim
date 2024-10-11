import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'products_grid_view_loading.dart';
import '../../manager/store_cubit/store_cubit.dart';
import 'store_product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<StoreCubit>().refreshStoreItems();
    return BlocConsumer<StoreCubit, StoreState>(
      buildWhen: context.read<StoreCubit>().buildStoreItemsWhen,
      listenWhen: context.read<StoreCubit>().listenStoreItemsWhen,
      listener: context.read<StoreCubit>().listenStoreItems,
      builder: (context, state) {
        return state.maybeWhen(
          fetchStoreItemsLoading: () => const ProductsGirdViewLoading(),
          orElse: () => context.read<StoreCubit>().buildStoreItemsGridView(
            context,
            pagingController: context
                .read<StoreCubit>()
                .storeItemsPagingAdapter
                .pagingController,
            itemBuilder: (_, item, index) {
              return StoreProductCard(
                storeItemModel: item,
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.65,
            ),
          ),
        );
      },
    );
  }
}
