import 'dart:io';

Future getData() {
  Duration myd = Duration(seconds: 3);

  Future f = Future.delayed(
    myd,
    () {
      for (i = 1; i <= 10; i++) {
        ans = n * i;
        print("\t\t\t$n * $i = $ans");
      }
    },
  );

  return f;
}

int n = 1;
int i = 1;
int ans = 0;

void main() async {
  stdout.write("\nEnter one value to print multiplication table =");
  n = int.parse(stdin.readLineSync()!);
  stdout
      .write("=================== sending data to server ==================\n");
  stdout.write(
      "\n====================== Wait few Seconds =====================\n");
  stdout.write(
      "\n**************** Data received successfully *****************\n\n");

  var res = await getData();

  stdout.write(
      "\n==============================================================");
}
