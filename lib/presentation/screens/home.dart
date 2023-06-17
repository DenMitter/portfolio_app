import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';

void downloadArchive(String url) async {
  var temporaryDir = await getTemporaryDirectory();
  String savedDir = temporaryDir.path;

  await FlutterDownloader.enqueue(
    url: url,
    savedDir: savedDir,
    fileName: 'archive.zip',
    showNotification: true,
    openFileFromNotification: true,
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      backgroundColor: const Color(0xFFD1E5FF),
      // appBar: AppBar(
      //   title: const Text("Portfolio APP", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,)),
      //   backgroundColor: const Color(0x00FFFFFF),
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      // ),
      body: Column(
        children: [
          Stack(
            // padding: const EdgeInsets.only(top: 81),
            children: [ 
              Padding(
                padding: const EdgeInsets.only(top: 81.0),
                child: Container(
                  width: 500.0,
                  height: 843.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(51), topRight: Radius.circular(51)),
                  ),
                ),
              ),
              Positioned(
                top: 75,
                left: 30,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 32.0),
                            child: Container(
                              width: 205.0,
                              height: 158.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFDBE8FF),
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 35.0, left: 21),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Технології",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 14.0, left: 21),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "PHP, JS, C++ ( basis ),\nPython ( basis ), MySql, Git",
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 14.0, left: 21),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "6",
                                            style: TextStyle(
                                              fontSize: 18, 
                                              fontWeight: FontWeight.bold, 
                                              color: Color(0xFF53ACFF), 
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32.0, left: 21),
                            child: Container(
                              width: 205.0,
                              height: 158.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFF6CA),
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 35.0, left: 21),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Освіта",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 14.0, left: 21),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Тільки закінчив 9 класів, \nліцей №30",
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Container(
                          width: 430.0,
                          height: 158.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFDBE8FF),
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 27.0, left: 21),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Про себе",
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 17.0, left: 21),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Я Богдан, мені 16 років. Мій основний стек це - PHP.\n\nЯ навчаюсь у \"Шаг\" два роки, у вільний час я займаюсь\nбільш поглибленним вивченням PHP.",
                                        style: TextStyle(fontSize: 13.4),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 75),
                            child: ElevatedButton(
                              onPressed: () {downloadArchive('https://drive.google.com/uc?export=download&confirm=no_antivirus&id=1PBVWVOBeMlSzBmyEjJElCA77kJCCGjjK');}, 
                              // ignore: sort_child_properties_last
                              child: const Text('Завантажити проект ( Front-end )', style: TextStyle(fontSize: 18, color: Color(0xFF070707)),),
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(430, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                backgroundColor: const Color(0xFFDBE8FF),
                                elevation: 0
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: ElevatedButton(
                              onPressed: () {downloadArchive('https://drive.google.com/uc?export=download&confirm=no_antivirus&id=1eGxbbsdn5wDMjT6eGYXoPMYTADLIFb_l');}, 
                              // ignore: sort_child_properties_last
                              child: const Text('Завантажити проект ( Python )', style: TextStyle(fontSize: 18, color: Color(0xFF070707)),),
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(430, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                backgroundColor: const Color(0xFFDBE8FF),
                                elevation: 0
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
