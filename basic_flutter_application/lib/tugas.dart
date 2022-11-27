import 'package:flutter/material.dart';

class MyTugas extends StatelessWidget {
  const MyTugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MyApp',
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              children: const [
                Expanded(
                  child: Center(
                    child: Text(
                      'Berita Terbaru',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Pertandingan Hari Ini',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                const Image(
                  image: NetworkImage(
                      'https://pict.sindonews.net/dyn/620/content/2020/02/12/11/1524916/lima-pesepak-bola-yang-terkenal-dermawan-iYy-thumb.jpg'),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 5, color: Colors.red))),
            child: const Center(
              child: Text(
                'Lima Pesepak Bola yang Terkenal Dermawan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: Column(children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 5, color: Colors.white),
                    ),
                    color: Colors.red),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                child: Row(children: [
                  const Image(
                    image: NetworkImage(
                        'https://awsimages.detik.net.id/community/media/visual/2022/09/23/kylian-mbappe.jpeg?w=1200'),
                    width: 200,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: const Text(
                      '1. Kylian Mbappe',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
              ),
            ]),
          ),
          Container(
            child: Column(children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 5, color: Colors.white),
                    ),
                    color: Colors.red),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                child: Row(children: [
                  const Image(
                    image: NetworkImage(
                        'https://media.cnn.com/api/v1/images/stellar/prod/221123130952-digital-messi.jpg?c=16x9&q=h_270,w_480,c_fill'),
                    width: 200,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: const Text(
                      '2. Lionel Messi',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
              ),
            ]),
          ),
          Container(
            child: Column(children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 5, color: Colors.white),
                    ),
                    color: Colors.red),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                child: Row(children: [
                  const Image(
                    image: NetworkImage(
                        'https://cdn.antaranews.com/cache/800x533/2021/12/26/000_9Q387G.jpg'),
                    width: 200,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: const Text(
                      '3. Cristiano ronaldo',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
              ),
            ]),
          ),
          Container(
            child: Column(children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 5, color: Colors.white),
                    ),
                    color: Colors.red),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                child: Row(children: [
                  const Image(
                    image: NetworkImage(
                        'https://awsimages.detik.net.id/community/media/visual/2021/12/02/mohamed-salah-1.jpeg?w=1200'),
                    width: 200,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: const Text(
                      '4. Mohamed Salah',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
              ),
            ]),
          ),
          Container(
            child: Column(children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 5, color: Colors.white),
                    ),
                    color: Colors.red),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                child: Row(children: [
                  const Image(
                    image: NetworkImage(
                        'https://pict.sindonews.net/dyn/850/pena/news/2021/01/12/52/298784/enggan-sakiti-fans-arsenal-ozil-pilih-pensiun-ketimbang-gabung-tottenham-dip.jpg'),
                    width: 200,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: const Text(
                      '5. Mesut Ozil',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
