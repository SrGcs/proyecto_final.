import 'package:proyecto_flutter/src/model/bottom_navy_bar_item.dart';
import 'package:proyecto_flutter/src/model/product.dart';
import 'package:proyecto_flutter/src/model/product_category.dart';
import 'package:proyecto_flutter/src/model/product_size_type.dart';
import 'package:proyecto_flutter/src/model/recommended_product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../src/model/categorical.dart';
import '../src/model/numerical.dart';

class AppData {
  const AppData._();

  static List<Product> products = [
    Product(
        name: 'Queso',
        price: 18000,
        about:
        'La elaboración del queso consiste en cuatro pasos principales, la fermentación, el cuajado, el desuerado y la maduración de la leche.\'Siempre participan los mismos ingredientes, la leche, fermentos y cuajo, y diversos elementos biológicos y químicos como la temperatura, humedad y presión.',
        isAvailable: true,
        off: 15000,
        quantity: 0,
        images: [
          'images/queso.png',
          'images/queso.png',
          'images/queso.png'
        ],
        isLiked: true,
        rating: 1,
        type: ProductType.lacteos),
    Product(
        name: 'Espinaca',
        price: 380,
        about:
        'En la mayoría de los casos, las plantas de espinaca para el mercado fresco se cosechan en un corte (se destruye toda la planta) aproximadamente 38-55 días desde la siembra.\'Por el contrario, las hojas de espinaca que se dirigen al mercado procesado se cosechan a los 60-80 días de la siembra.',
        isAvailable: true,
        off: 3200,
        quantity: 0,
        images: [
          'images/espinaca.png',
          'images/espinaca.png',
          'images/espinaca.png'
        ],
        isLiked: false,
        rating: 4,
        type: ProductType.verduras),
    Product(
        name: 'Aji Peruano',
        price: 1500,
        about:
        'Lima encabeza la producción de ají, con el 33%, seguido de Tacna (23%) destacando la producción de ají amarillo. Por ejemplo:\'Pasco resalta con el 83% en la producción de rocoto a nivel nacional y Oxapampa, principal centro de cultivo.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/aji_peruano.png',
          'images/aji_peruano.png',
          'images/aji_peruano.png',
        ],
        isLiked: false,
        rating: 3,
        type: ProductType.verduras),
    Product(
        name: 'Yogurt',
        price: 229,
        about:
        'La leche, ya termizada y enfriada y con el contenido de materia grasa adecuado, es estandarizada en sólidos,\'en una línea de mezcla, en la que se agrega la leche en polvo, otros ingredientes lácteos si fuera necesario y los aditivos que requiera la formulación.',
        isAvailable: true,
        off: 8000,
        quantity: 0,
        images: [
          'images/yogurt.png',
          'images/yogurt.png',
          'images/yogurt.png',
        ],
        isLiked: false,
        rating: 5,
        sizes: ProductSizeType(categorical: [
          Categorical(CategoricalType.mediano, true),
          Categorical(CategoricalType.grande, false),
        ]),
        type: ProductType.lacteos),
    Product(
        name: 'Terrarios',
        price: 15000,
        about:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/terrarios.png',
          'images/terrarios.png',
          'images/terrarios.png',
        ],
        isLiked: false,
        rating: 4,
        sizes: ProductSizeType(
            numerical: [Numerical('41', true), Numerical('45', false)]),
        type: ProductType.flores),
    Product(
        name: 'Gallinas Ponedoras',
        price: 14000,
        about:
        'Las gallinas ponedoras se mantienen en producción hasta unas 75-80 semanas de edad,\'pero el período real de la puesta de huevos es solo unas 55-60 semanas ya que las pollitas comienzan a producir aproximadamente sobre las 20 semanas.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/gallina_ponedora.png',
          'images/gallina_ponedora.png',
          'images/gallina_ponedora.png',
          'images/gallina_ponedora.png',
        ],
        isLiked: false,
        rating: 2,
        type: ProductType.canazta_familiar),
    Product(
        name: 'Huevos',
        price: 14700,
        about:
        'La luz hace que la glándula pituitaria del cuerpo de una gallina produzca huevos. Se requiere en promedio entre 14 a 16 horas de luz para producir un huevo.\'La reducción de las horas puede hacer que la producción disminuya o cese.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/huevos.png',
          'images/huevos.png',
        ],
        isLiked: false,
        rating: 3,
        sizes: ProductSizeType(numerical: [
          Numerical('12', true),
          Numerical('24', false),
          Numerical('32', false)
        ]),
        type: ProductType.canazta_familiar),
    Product(
        name: 'Leche',
        price: 3000,
        about:
        'En la actualidad, en todo el mundo existen aproximadamente 250 millones de vacas que producen leche.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/leche.png',
          'images/leche.png',
        ],
        isLiked: false,
        sizes: ProductSizeType(numerical: [
          Numerical('1LT', true),
          Numerical('2LT', false),
          Numerical('3LT', false)
        ]),
        rating: 2,
        type: ProductType.lacteos),
    Product(
        name: 'Arequipe',
        price: 12990,
        about:
        'El procedimiento utilizado para la elaboración del Arequipe, se realiza mediante la mezcla de leche con azúcar, sometiéndolos a un proceso de concentración, intercaladas con altas presiones y bajas temperaturas,\'para que no se caramelicen los azucares, y obtener así el conocido dulce.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/arequipe.png',
          'images/arequipe.png',
        ],
        isLiked: false,
        sizes: ProductSizeType(numerical: [
        ]),
        rating: 2,
        type: ProductType.lacteos),
    Product(
        name: 'Miel',
        price: 21000,
        about:
        'Una vez extraído el néctar de las flores, el proceso de elaboración de la miel, continúa cuando las abejas ingieren el néctar y lo almacenan en su abdomen, denominado\'“buche melario”. Una vez ingerido, las abejas modifican el pH de la miel al combinarlo con unas enzimas.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/miel.png',
          'images/miel.png',
        ],
        isLiked: false,
        sizes: ProductSizeType(numerical: [
        ]),
        rating: 2,
        type: ProductType.canazta_familiar),
    Product(
        name: 'Lechuga',
        price: 5600,
        about:
        'La lechuga cultivada (Lactuca sativa L.) es una planta anual de la familia de las compuestas. La duración del cultivo suele ser de 50-60 dias para las va- riedades tempranas y de 70-80 dias para las tardias,',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/Lechuga.png',
          'images/Lechuga.png',
        ],
        isLiked: false,
        sizes: ProductSizeType(numerical: [
        ]),
        rating: 2,
        type: ProductType.verduras),
    Product(
        name: 'Conejos',
        price: 25000,
        about:
        'La cunicultura es el proceso de reproducción, cría y engorde de conejos, en forma económica,\'orientada a obtener el máximo beneficio en la venta de sus productos y subproductos.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/conejos.png',
          'images/conejos.png',
        ],
        isLiked: false,
        sizes: ProductSizeType(numerical: [
        ]),
        rating: 2,
        type: ProductType.animales),
    Product(
        name: 'Astromelias',
        price: 3000,
        about:
        'Preparación del suelo El mejor sustrato es franco-arenoso, bien drenado, con conteni- do de materia orgánica',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/astromelias.png',
          'images/astromelias.png',
        ],
        isLiked: false,
        sizes: ProductSizeType(numerical: [
          Numerical('10', true),
          Numerical('20', false),
          Numerical('30', false)
        ]),
        rating: 2,
        type: ProductType.flores),
    Product(
        name: 'Calendula',
        price: 3500,
        about:
        'La caléndula se puede cultivar en semilla, sigue estos sencillos pasos: Rellenar casi todo el semillero con sustrato especial semillero,\'colocar 2 o 3 semillas en cada alveolo del semillero y terminar de rellenar con el sustrato. Regar empleando un pulverizador con abundante agua el semillero.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/calendula.png',
          'images/calendula.png',
        ],
        isLiked: false,
        sizes: ProductSizeType(numerical: [
        ]),
        rating: 2,
        type: ProductType.flores),
    Product(
        name: 'Suculentas',
        price: 15000,
        about:
        'Las plantas suculentas se multiplican por dos vías principales, la reproducción sexual mediante semillas y la propagación vegetativa mediante yemas, esquejes, vástagos, hojas e injertos.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/Suculentas.png',
          'images/Suculentas.png',
        ],
        isLiked: false,
        sizes: ProductSizeType(numerical: [
          Numerical('pequeñas', true),
          Numerical('medianas', false),
          Numerical('grandes', false)
        ]),
        rating: 2,
        type: ProductType.flores),
    Product(
        name: 'Polen',
        price: 3000,
        about:
        'El polen se forma en unas bolsitas o vesículas llamadas sacos polínicos que, en las plantas más evolucionadas, las angiospermas,\'se sitúan en los estambres de las flores. Cuando el polen está maduro, la antera se rasga, saliendo éste al exterior.',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'images/polen.png',
          'images/polen.png',
        ],
        isLiked: false,
        sizes: ProductSizeType(numerical: [
        ]),
        rating: 2,
        type: ProductType.canazta_familiar),
  ];

  static List<ProductCategory> categories = [
    ProductCategory(ProductType.all, true, Icons.all_inclusive),
    ProductCategory(
        ProductType.lacteos, false, FontAwesomeIcons.eject),
    ProductCategory(ProductType.lacteos, false, FontAwesomeIcons.eject),
    ProductCategory(ProductType.flores, false, FontAwesomeIcons.eject),
    ProductCategory(ProductType.verduras, false, FontAwesomeIcons.eject),
    ProductCategory(ProductType.canazta_familiar, false, FontAwesomeIcons.eject),
  ];

  static List<Color> randomColors = [
    const Color(0xFFFCE4EC),
    const Color(0xFFF3E5F5),
    const Color(0xFFEDE7F6),
    const Color(0xFFE3F2FD),
    const Color(0xFFE0F2F1),
    const Color(0xFFF1F8E9),
    const Color(0xFFFFF8E1),
    const Color(0xFFECEFF1),
  ];

  static List<BottomNavyBarItem> bottomNavyBarItems = [
    BottomNavyBarItem(
        "Home", const Icon(Icons.home), const Color(0xFF2cb311), Colors.grey),
    BottomNavyBarItem("Favoritos", const Icon(Icons.favorite),
        const Color(0xFF2cb311), Colors.grey),
    BottomNavyBarItem("Carrito", const Icon(Icons.shopping_cart),
        const Color(0xFF2cb311), Colors.grey),
    BottomNavyBarItem("Perfil", const Icon(Icons.person),
        const Color(0xFF2cb311), Colors.grey),
  ];

  static List<RecommendedProduct> recommendedProducts = [
    RecommendedProduct(
        imagePath: "", cardBackgroundColor: const Color(0xFF2cb311)),
    RecommendedProduct(
        imagePath: "",
        cardBackgroundColor: const Color(0xFF3081E1),
        buttonBackgroundColor: const Color(0xFF9C46FF),
        buttonTextColor: Colors.white),
  ];
}