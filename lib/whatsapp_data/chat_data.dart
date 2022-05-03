var hours = DateTime.now().toString().split(" ")[1].split(":")[0];
var minutes = DateTime.now().toString().split(" ")[1].split(":")[1];

List<Map<String, dynamic>> chatDatas = [
  {
    'imgProfile': "assets/profile1.jpg",
    'name': 'Elaine Huang',
    'chat': 'Hey!! What the F**k are you doing??',
    'time': hours.toString()+":"+minutes.toString()
  },
  {
    'imgProfile': "assets/profile2.jpeg",
    'name': 'Vinnie Felim',
    'chat': 'Krunker, Krunker yokkk',
    'time': hours.toString()+":"+minutes.toString()
  },
  {
    'imgProfile': "assets/profile3.jpeg",
    'name': 'Mervin Winata',
    'chat': 'Lagi gabut ni, yok nnton bioskop cok',
    'time': hours.toString()+":"+minutes.toString()
  },
  {
    'imgProfile': "assets/profile4.jpeg",
    'name': 'Fendy Sanjaya',
    'chat': 'w ke vihara dulu yee, mau didoain apa?',
    'time': hours.toString()+":"+minutes.toString()
  },
  {
    'imgProfile': "assets/profile5.jpg",
    'name': 'Richard Halim',
    'chat': 'hukommmmm, tiktok lu, udah kalah gartic',
    'time': hours.toString()+":"+minutes.toString()
  },
  {
    'imgProfile': "assets/profile6.jpg",
    'name': 'Andrew Eliezer Tarigan',
    'chat': 'tadi dikantor ga tau apa-apa aku',
    'time': hours.toString()+":"+minutes.toString()
  },
  {
    'imgProfile': "assets/profile7.png",
    'name': 'Kenny Calnelius Winata',
    'chat': '你吃飽了沒？ 今天我來接你。。',
    'time': hours.toString()+":"+minutes.toString()
  },
];


