import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purpleAccent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.purple,
            title: Text(
              'GÜNÜN FALI',
              style: TextStyle(fontSize: 20),
            ),
          ),
          body: uygulama(),
        ),
      ),
    );
  }
}

class uygulama extends StatefulWidget {
  const uygulama({Key? key}) : super(key: key);

  @override
  _uygulamaState createState() => _uygulamaState();
}

class _uygulamaState extends State<uygulama> {
  int askYanitlar =1;
  int paraYanitlar = 1;
  int tavsiyeYanitlar = 1;

  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('images/falci.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            child: ListTile(
              onTap: () {
                setState(() {
                  askYanitlar = Random().nextInt(5)+1;
                });
                },
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: Text(
                'AŞK DURUMU',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            child: ListTile(
              onTap: () {
                setState(() {
                  paraYanitlar = Random().nextInt(5);
                });
              },
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              title: Text(
                'PARA DURUMU',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            child: ListTile(
              onTap: () {
                setState(() {
                  tavsiyeYanitlar = Random().nextInt(5);
                });
              },
              leading: Icon(
                Icons.explore,
                color: Colors.blue,
              ),
              title: Text(
                'GÜNLÜK TAVSİYE',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            yanitlar[askYanitlar],
            style: TextStyle(fontSize: 20),
          ),


        ],
      ),
    );
  }
}
