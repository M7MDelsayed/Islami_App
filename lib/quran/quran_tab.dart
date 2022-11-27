import 'package:flutter/material.dart';
import 'package:islami_app/quran/sura_name_widget.dart';

import 'num_of_ayat.dart';

class QuranTab extends StatelessWidget {
static const routeName='quran-tab';
List<String>suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
List<String>numOfAyah=['7','286','200','176','120','165','206','75','129',
  '109','123','111','43','52','99','128','111','110','98','135','112','78',
  '118','64','77','227','93','88','69','60','34','30','73','54','45','83',
  '182','88','75','85','54','53','89','59','37','35','38','29','18','45',
  '60','49','62','55','78','96','29','22','24','13','14','11','11','18',
  '12','12','30','52','52','44','28','28','20','56','40','31','50','40',
  '46','42','29','19','36','25','22','17','19','26','30','20','15','21',
  '11','8','8','19','5','8','8','11','11','8','3','9','5','4','7','3','6',
  '3','5','4','5','6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Image.asset('assets/images/background_header.png')),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('عدد الآيات',style: TextStyle(fontSize: 24),),
              Text('إسم السورة',style: TextStyle(fontSize: 24),),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            flex: 5,
            child: ListView.separated(itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumOfAyat(numOfAyah[index]),
                  Container(
                    width: 2,
                    height: 41,
                    color: Theme.of(context).primaryColor,
                  ),
                  SuraNameWidget(suraName[index],index),
                ],);
            }, separatorBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Theme.of(context).primaryColor,
              );
            },
                itemCount: suraName.length),
          ),
        ],
      ),
    );
  }
}
