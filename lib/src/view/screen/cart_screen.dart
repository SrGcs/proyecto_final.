import 'dart:math';

import 'package:proyecto_flutter/core/extensions.dart';
import 'package:proyecto_flutter/src/view/widget/animated_switcher_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/product_controller.dart';
import '../../model/product.dart';
import '../widget/empty_cart.dart';

final ProductController controller = Get.put(ProductController());

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Carrito",
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  Widget cartListView() {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      itemCount: controller.cartProducts.length,
      itemBuilder: (_, index) {
        Product product = controller.cartProducts[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(15),
          height: 120,
          decoration: BoxDecoration(
              color: Colors.grey[200]?.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorExtension.randomColor),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      product.images[0],
                      width: 70,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      product.name.nextLine,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    Text(
                      controller.getCurrentSize(product),
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      controller.isPriceOff(product)
                          ? "\$${product.off}"
                          : "\$${product.price}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 23),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    IconButton(
                      splashRadius: 10.0,
                      onPressed: () => controller.decreaseItem(index),
                      icon: const Icon(
                        Icons.remove,
                        color: Color(0xFF2cb311),
                      ),
                    ),
                    GetBuilder<ProductController>(
                      builder: (ProductController controller) {
                        return AnimatedSwitcherWrapper(
                          child: Text(
                            '${controller.cartProducts[index].quantity}',
                            key: ValueKey<int>(
                                controller.cartProducts[index].quantity),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      splashRadius: 10.0,
                      onPressed: () => controller.increaseItem(index),
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xFF2cb311),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget bottomBarTitle() {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Total",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
            Obx(() {
              return AnimatedSwitcherWrapper(
                child: Text(
                  "\$${controller.totalPrice.value}",
                  key: ValueKey<int>(controller.totalPrice.value),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF2cb311),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }

  Widget bottomBarButton() {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
          child: ElevatedButton(
            onPressed: () async {
              String pedido = "";
              var carrito;
              carrito.items.forEach((key, value) {
                pedido = '$pedido' +
                    value.allProducts +
                    "CANTIDAD" +
                    value.elent.obs.toString() +
                    "Precio Total" +
                    (value.allProducts * value.totalPrice).toStringAsfixed(2) +
                    "\n";
              });
              pedido = '$pedido' + "Subtotal"+carrito.totalPrice.toStringAsFixed(2)+"\n";

              String celular= "+57 3134104468";
              String mensaje = pedido;
              String url = "WhatsApp://send?phone$celular&text$mensaje";
              if(await canLaunch(url)){
                await launch(url);
              }else{
                throw('No se pudo enviar mensaje por whatsapp');
              }


            },
            child: const Text("Comprar"),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 10,
            child: !controller.isEmptyCart ? cartListView() : const EmptyCart(),
          ),
          bottomBarTitle(),
          bottomBarButton()
        ],
      ),
    );
  }

  canLaunch(String url) {}

  launch(String url) {}
}