import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/core/utils/style_manager.dart';

import '../../../core/utils/colors_manager.dart';
import '../../../core/utils/constants.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.brandName,
    required this.title,
    required this.code,
    this.priceAfetDiscount,
    this.taxName,
    required this.press,
  });
  final String image, brandName, title;
  final  String code;
  final String? priceAfetDiscount;
  final String? taxName;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 140,
        //height: 240,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(defaultBorderRadious)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.3,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(defaultBorderRadious)),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: image,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                  if (taxName != null)
                    Positioned(
                      right: defaultPadding / 2,
                      top: defaultPadding / 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding / 2),
                        height: 16,
                        decoration: const BoxDecoration(
                          color: ColorsManager.errorColor,
                          borderRadius: BorderRadius.all(
                              Radius.circular(defaultBorderRadious),
                          ),
                        ),
                        child: Text(
                          "$taxName",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      brandName.toUpperCase(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: StyleManager.bodyMedium.copyWith(fontSize: 10),
                    ),
                    //const SizedBox(height: defaultPadding / 2),
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: StyleManager.titleSmall.copyWith(fontSize: 12),
                    ),
                    const SizedBox(height: 5),
                      Text(
                      "Code : $code",
                            style: const TextStyle(
                              color: ColorsManager.secondaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
