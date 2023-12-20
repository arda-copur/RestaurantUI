import 'package:flutter/material.dart';

class MiniFoodCard extends StatelessWidget {
  String urunAdi = "";
  int fiyat;
  String imageYolu = "";
  MiniFoodCard({
    Key? key,
    required this.urunAdi,
    required this.fiyat,
    required this.imageYolu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              color: Color(0x33000000),
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFFE0E3E7),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageYolu,
                    width: 60,
                    height: 60,
                  ),
                ),
                Text(
                  urunAdi,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "\$$fiyat",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                const CustomContainerTwo(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomContainerTwo extends StatelessWidget {
  const CustomContainerTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red[500],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      alignment: const AlignmentDirectional(0, 0),
      child: Text("Sipariş Ver",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16)),
    );
  }
}
