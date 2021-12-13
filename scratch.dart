import 'dart:io';

void main(){
  performTask();
}

void performTask()async {
  task1();
  // String task2result = await task2();
  // task3(task2result);
}

void task1() {
  String result = 'task1';
  print('task1 completed');
}

// Future task2() async{
//   String result ;
//   Duration threeSec = Duration(seconds: 3);
//
//   // sleep(threeSec);=> sync
//   Future.delayed(threeSec,(){
//     result = 'task2';
//     print('task2 completed');
//   } );
//   return result;
//
//
// }

void task3(String task2data) {

  String result = 'task3';
  print('task3 completed with $task2data');
}