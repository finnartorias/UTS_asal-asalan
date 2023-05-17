import 'dart:async';
import 'package:flutter/material.dart';
import 'custom_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wakakaka',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SplashScreen(), // Mengatur SplashScreen sebagai halaman awal
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/ваня-ванянн.gif', // Ubah path gambar sesuai dengan nama dan lokasi gambar Anda
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16),
            Text(
              'yahahaha wahyu',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loby'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_active_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Shop'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
              onTap: () {},
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {}),
          ],
        ),
      ),
      body: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          CustomContainer(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/amd-radeon-rx-6000_169.jpeg',
                  fit: BoxFit.contain,
                  width: 370,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  'Red Radeon',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Lee Ka Lau, Francis Lau, Benny Lau, dan Kwok Yuen Ho mendirikan ATI tahun 1985 sebagai Array Technology, Inc. Bekerja pada bidang OEM, ATI memproduksi kartu grafis untuk pabrik komputer seperti IBM dan Commodore. Pada tahun 1987, ATI berkembang menjadi pendjual kartu grafis secara independen, memperkenalkan EGA Wonder dan VGA Wonder. Pada awal 90an, ATI mengeluarkan produk yang mampu memproses grafis tanpa mengguanakn cpu: Mach8 pada tahun 1991, Mach32 pada tahun 1992 yang memberikan peningkatan bandwidth dan akselerasi antar muka grafis. ATI Technologies Inc menjadi perusahaan publik pada tahun 1993, dengan saham pada NASDAQ dan Toronto Stock Exchange..',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          CustomContainer(
            color: Color.fromARGB(255, 21, 121, 26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/nvidia-ces-2022-geforce-rtx-3090-ti-large-3840-1641329558366.png',
                  fit: BoxFit.contain,
                  width: 370,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  'Green Nvidia',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'NVIDIA Corporation adalah perusahaan teknologi multinasional Amerika yang didirikan di Delaware dan berbasis di Santa Clara, California. Perusahaan tersebut merancang unit pemroses grafis (GPU) untuk pasar gim dan profesional, serta unit system on a chip (SoC) untuk komputasi seluler dan pasar otomotif. Lini produk GPU utamanya, berlabel "GeForce", bersaing langsung dengan produk "Radeon" Advanced Micro Devices (AMD). Nvidia memperluas kehadirannya di industri permainan dengan perangkat genggam Shield Portable, Shield Tablet, dan Shield Android TV serta layanan cloud gaming GeForce Now.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          CustomContainer(
            color: Color.fromARGB(255, 209, 138, 31),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/AMD-Ryzen.jpg',
                  fit: BoxFit.contain,
                  width: 370,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  'Orange Ryzen',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Ryzen (/raizən/ ry-zən) adalah merek mikroprosesor x86-64 yang dirancang dan dipasarkan oleh Advanced Micro Devices, Inc. (AMD) untuk platform desktop, mobile, dan sistem benam berdasarkan arsitektur Zen dan turunannya. Terdiri dari unit pemroses central (CPU) dan unit pemroses terakselerasi (APU).',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          CustomContainer(
            color: Color.fromARGB(255, 29, 76, 233),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/intel-innovation-intel-luncurkan-20211101093615.jpg',
                  fit: BoxFit.contain,
                  width: 370,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  'Blue Intel',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Intel Corporation adalah perusahaan multinasional dan perusahaan teknologi Amerika yang berkantor pusat di Santa Clara, California, di Silicon Valley. Ini adalah produsen semiconductor chip terbesar di dunia berdasarkan pendapatan, dan merupakan pengembang seri x86 dari mikroprosesors, prosesor yang ditemukan di sebagian besar komputer pribadi (PC). Incorporated in Delaware, Intel berada di peringkat No. 45 di 2020 Fortune 500 daftar perusahaan Amerika Serikat terbesar berdasarkan total pendapatan selama hampir satu dekade, dari tahun fiskal 2007 hingga 2016.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cari'),
      ),
      body: Center(
        child: Text('cari apaan'),
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('notif'),
      ),
      body: Center(
        child: Text('terlalu sunyi'),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Hasil pencarian: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Saran pencarian...'),
    );
  }
}
