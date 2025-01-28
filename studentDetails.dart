import 'dart:io';
main(){
 List <Map> studList = [];
 Map entry = {"name": String, "studNum": int};
 String sn;
 int num;
 print(" Add Students in your List, type exit to stop ");
 do {
  stdout.write("Input Student name: ");
  sn = stdin.readLineSync()!;
 if (sn.toLowerCase()== "exit")
  break;
 stdout.write("Input Student Number: ");
 num = int.parse(stdin.readLineSync()!);
 entry["name"]=sn;
 entry["studNum"]=num;
 studList.add({entry["name"]:entry["studNum"]});
 print("Updated List $studList");
 }while(sn.toLowerCase() != "exit");
}