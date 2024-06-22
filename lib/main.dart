import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tuntunan Shalat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/wudhu': (context) => WudhuScreen()
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuntunan Shalat'),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              '',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.8, // Adjust the height as needed
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 2, // Adjust aspect ratio as needed
                children: [
                  MenuButton(
                    title: 'Wudhu',
                    icon: Icons.water,
                    onTap: () {
                      Navigator.pushNamed(context, '/wudhu');
                    },
                  ),
                  MenuButton(
                    title: 'Tayamum',
                    icon: Icons.waves,
                    onTap: () {},
                  ),
                  MenuButton(
                    title: 'Shalat Fardhu',
                    icon: Icons.accessibility_new,
                    onTap: () {},
                  ),
                  MenuButton(
                    title: 'Shalat Sunnah',
                    icon: Icons.accessibility,
                    onTap: () {},
                  ),
                  MenuButton(
                    title: 'Shalat Qashar dan Jamak',
                    icon: Icons.directions_walk,
                    onTap: () {},
                  ),
                  MenuButton(
                    title: 'Shalat bagi Orang Sakit',
                    icon: Icons.local_hospital,
                    onTap: () {},
                  ),
                  MenuButton(
                    title: 'Dzikir Setelah Shalat',
                    icon: Icons.book,
                    onTap: () {},
                  ),
                  MenuButton(
                    title: 'Doa Setelah Dzikir',
                    icon: Icons.book_online,
                    onTap: () {},
                  ),
                  MenuButton(
                    title: 'Fiqih Shalat',
                    icon: Icons.menu_book,
                    onTap: () {},
                  ),
                  MenuButton(
                    title: 'Doa Harian',
                    icon: Icons.calendar_today,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  MenuButton({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.black),
            SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}



class WudhuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wudhu'),
      ),
      body: Container(
        color: Colors.black, 
        child: ListView(
          children: [
            CustomExpansionTile(
              title: 'Arti Wudhu',
              children: [Text(
                'Wudlu menurut bahasa artinya bersih dan indah. '
                'Sedang menurut syara artinya membersihkan'
                'anggota wudlu untuk menghilangkan hadas kecil. '
                'Orang yang hendak melaksanakan shalat, '
                'wajib lebih dahulu berwudlu,\n'
                'karena wudlu merupakan syarat sahnya shalat.'
              )],
            ),
            CustomExpansionTile(
              title: 'Doa Setelah Wudhu',
              children: [Text(
                'أشهد أن لا إله إلا الله وحدَهُ لا شَرِيكَ لَهُ، وَ أَشْهَدُ أَنَّ مُحَمَّداً عَبْدُهُ وَرَسُولُهُ، اللَّهُمَّ اجْعَلْنِي مِنَ التَّوَّابِينَ وَ اجْعَلْنِي مِنَ الْمُتَطَهِّرِينَ\n'
                '\n'
                'Asy-hadu an laa ilaaha illallaah wahdahu laa syariika lahu,\n'
                'wa asy-hadu anna muhammadan abduhu wa rasuuluhu, allaahummaj\n'
                'alnii minat tawwaabiin, waj alnii minal mutathahhiriin.\n'
                '\n'
                'Aku bersaksi bahwa tiada Tuhan selain Allah, Yang Mahaesa, tiada sekutu bagi-Nya.\n'
                'Dan aku bersaksi bahwa Muhammad adalah hamba dan rasul-Nya. Ya Allah,\n'
                'jadikanlah aku termasuk golongan yang bertobat dan jadikanlah aku termasuk golongan yang menyucikan diri'
                )],
            ),
            CustomExpansionTile(
              title: 'Fardhu Wudhu',
              children: [Text(
                'Enam perkara yang menjadi fardhu wudhu:\n'
                '\n'
                '1. Niat\n'
                '2. Membasuh muka mulai dari batas tumbuh rambut hingga bawah dagu\n'
                '3. Membasuh kedua tangan sampai siku-siku\n'
                '4. Mengusap sebagian rambut kepala\n'
                '5. Membasuh kedua kaki sampai mata kaki\n'
                '6. Tertib, artinya melakukan secara berurutan'
                )],
            ),
            CustomExpansionTile(
              title: 'Niat Wudhu',
              children: [Text(
              'نَوَيْتُ الْوُضُوءَ لِرَفْعِ الْحَدَثِ الْأَصْغَرِ فَرْضًا لِلَّهِ تَعَالَى\n'
              '\n'
              'Nawaitul wudhuu-a liraf ill hadatsil ashghari fardhal lilaahi ta aalaa\n'
              '\n'
              'Saya niat berwudhu untuk menghilangkan hadats kecil fardu karena Allah.'
              )],
            ),
            CustomExpansionTile(
              title: 'Sunnah Wudhu',
              children: [Text(
                'Sunah-sunah wudhu yakni hal yang dianjurkan\n'
                '\n'
                'sebelum dan selama berwudhu, antara lain:\n'
                '1.Membaca basmalah sebelum berwudhu\n'
                '2.Membasuh tangan sebelum berwudhu\n'
                '3.Berkumur-kumur\n'
                '4.Membasuh lubang hidung sebelum berniat\n'
                '5.Menyapu seluruh kepala dengan air\n'
                '6.Mendahulukan anggota tubuh kanan sebelum kiri\n'
                '7.Menyapu kedua telinga luar dan dalam\n'
                '8.Melakukan basuhan sebanyak 3 kali\n'
                '9.Menyela-nyela jari tangan dan kaki\n'
                '10.Membaca doa sesudah wudhu'
                )],
            ),
            CustomExpansionTile(
              title: 'Syarat Wudhu',
              children: [Text(
                'Syarat-syarat wudhu antara lain:\n'
                '\n'
                '1.Niat\n'
                '2.Tamyiz, yakni dapat membedakan baik dan buruknya sesuatu\n'
                '3.Tidak berhadast besar\n'
                '4.Wudhu dengan air suci yang mensucikan\n'
                '5.Tidak ada sesuatu yang menghalangi air sampai ke anggota badan misal cat, getah dan sebagainya\n'
                '6.Mengetahui mana yang wajib dan mana sunnah'
                )],
            ),
            CustomExpansionTile(
              title: 'Tata Cara Wudhu',
              children: [Text(
                'Lihat tata cara wudhu>>'
                )],
            ),
            CustomExpansionTile(
              title: 'Yang Membatalkan Wudhu',
              children: [Text(
                'Adapun hal-hal yang dapat membatalkan wudhu antara lain:\n'
                '\n'
                '1.Keluar sesuatu dari qubul dan dubur, misal buang air kecil atau besar atau keluar angin dan sebagainya\n'
                '2.Hilang akal sebab gila, pingsan, mabuk, tidur nyenyak\n'
                '3.Tersentuh kulit antara laki dan perempuan yang bukan muhrimnya\n'
                '4.Tersentuh kemaluan dengan tapak tangan tanpa penutup'
                )],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final List<Widget> children;

  CustomExpansionTile({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(), 
      child: ExpansionTile(
        backgroundColor: Colors.black,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        children: children.map((child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.white), 
            child: child,
          ),
        )).toList(),
      ),
    );
  }
}