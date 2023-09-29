import 'dart:io';
  bool isCompleted=false;

void main()
{
  while(!isCompleted)
  {
    print("Which conversion do you want? Please Enter Number");
    print("1. Length Conversion\n2. Temperature conversion\n3. Area Conversion\n4. Weight Conversion\n5. Time conversion");
    var whichConversion=stdin.readLineSync();
    if(whichConversion=="1")
    {
      lengthConversion();
    }
    if(whichConversion=="2")
    {
      temeratureConversion();
    }
    if(whichConversion=="3")
    {
      areaConversion();
    }
    if(whichConversion=="4")
    {
      weightConversion();
    }
    if(whichConversion=="5")
    {
      timeConversion();
    }
  }

}


lengthConversion()
{
  MetertoKilometers()
  {
    print("Please Enter Value in Meter");
    int lenght=int.parse(stdin.readLineSync()!);
    var MetertoKilometersAns= lenght/1000;
    print("Thus, $lenght M = $MetertoKilometersAns km");
    countineOrNot();
  }

  KilometerstoMeter()
  {
    print("Please Enter Value in Kilometer");
    int lenght=int.parse(stdin.readLineSync()!);
    var KilometerstoMeterAns= lenght*1000;
    print("Thus, $lenght km = $KilometerstoMeterAns m");
    countineOrNot();
  }

  
  feettoInches()
  {
    print("Please Enter Value in Feet");
    int lenght=int.parse(stdin.readLineSync()!);
    var feettoInchesAns= lenght*12;
    print("Thus, $lenght ft = $feettoInchesAns Inches");
    countineOrNot();
  }

  Inchestofeet()
  {
    print("Please Enter Value in Inches");
    int lenght=int.parse(stdin.readLineSync()!);
    var InchestofeetAns= lenght/12;
    print("Thus, $lenght inches = $InchestofeetAns Ft");
    countineOrNot();
  }
  
  CentimetertoMeter()
  {
    print("Please Enter Value in Centimeter");
    int lenght=int.parse(stdin.readLineSync()!);
    var CentimetertoMeterAns= lenght*0.01;
    print("Thus, $lenght cm = $CentimetertoMeterAns m");
    countineOrNot();
  }
  
  MetertoCentimeter()
  {
    print("Please Enter Value in Meter");
    int lenght=int.parse(stdin.readLineSync()!);
    var MetertoCentimeterAns= lenght*100;
    print("Thus, $lenght m = $MetertoCentimeterAns cm");
    countineOrNot();
  }

  print("Which Length Conversion Do You Want?");
  print("1) Meter to kilometers\n2) Kilometer to Meters\n3) feet to Inches\n4) Inches to Feet\n5) Centimeter to Meter\n6) Meter to Centimeter");
  var lenghtUnit=stdin.readLineSync();
  
  if(lenghtUnit=="1")
  {
    MetertoKilometers();
  }

  else if(lenghtUnit=="2")
  {
    KilometerstoMeter();
  }

  else if(lenghtUnit=="3")
  {
    feettoInches();
  }

  else if(lenghtUnit=="4")
  {
    Inchestofeet();
  }

  else if(lenghtUnit=="5")
  {
    CentimetertoMeter();
  }

  else if(lenghtUnit=="6")
  {
    MetertoCentimeter();
  }
  
}


temeratureConversion()
{

  FahrenheittoCelcius()
  {
    print("Please Enter Value in Fahrenheit");
    int Fahrenheit=int.parse(stdin.readLineSync()!);
    var tempValueInCelcius=(Fahrenheit - 32) * 5/9;
    print("Value of Temperature in Celcius is $tempValueInCelcius");
    countineOrNot();
  }
  CelciustoFahrenheit()
  {
    print("Please Enter Value in  Celcius");
    int Celcius=int.parse(stdin.readLineSync()!);
    var tempValueInFahrenheit= Celcius * (9/5)+32;
    print("Value of Temperature in Fahrenheit is $tempValueInFahrenheit");
    countineOrNot();
  }

  print("Do you want temperature value in Fahrenheit or Celcius?");
  print("1) Fahrenheit to Celcius\n2) Celcius to Fahrenheit");
  var tempUnit=stdin.readLineSync();
  if(tempUnit=="1")
  {
    FahrenheittoCelcius();
  }
  else if(tempUnit=="2")
  {
    CelciustoFahrenheit();
  }
  else{
    print("Please Enter Correct Value");
    tempUnit=stdin.readLineSync();
  }

}

areaConversion()
{

  SquareMilestoSquareyards(){
    print("Please Enter Value in Square Miles");
    int area=int.parse(stdin.readLineSync()!);
    var SquareMilestoSquareyardsAns= area*3097600;
    print("Thus, $area sq miles = $SquareMilestoSquareyardsAns sq yards");
    countineOrNot();
  }

  SquareYardstoSquareMiles()
  {
    print("Please Enter Value in Square Yards");
    int area=int.parse(stdin.readLineSync()!);
    var SquareMilestoSquareyardsAns= area/3097600;
    print("Thus, $area sq yards = $SquareMilestoSquareyardsAns sq miles");
    countineOrNot();
  }

  SquareYardstoSquareFeet(){
    print("Please Enter Value in Square Yards");
    int area=int.parse(stdin.readLineSync()!);
    var SquareYardstoSquareFeetAns= area*9;
    print("Thus, $area sq yards = $SquareYardstoSquareFeetAns sq feet");
    countineOrNot();
  }

  SquareFeettoSquareYards()
  {
    print("Please Enter Value in Square Feets");
    int area=int.parse(stdin.readLineSync()!);
    var SquareFeettoSquareYardsAns= area/9;
    print("Thus, $area sq feets = $SquareFeettoSquareYardsAns sq yards");
    countineOrNot();
  }


  print("Which Area Conversion Do You Want?");
  print("1) Square Miles to Square yards\n2) Square Yards to Square Miles\n3) Square Yards to Square Feet\n4) Square Feet to Square Yards");
  var areaUnit=stdin.readLineSync();
  
  if(areaUnit=="1")
  {
    SquareMilestoSquareyards();
  }

  else if(areaUnit=="2")
  {
    SquareYardstoSquareMiles();
  }

  else if(areaUnit=="3")
  {
    SquareYardstoSquareFeet();
  }

  else if(areaUnit=="4")
  {
    SquareFeettoSquareYards();
  }
}

weightConversion()
{

  KgtoGrams()
  {
    print("Please Enter Value in KG");
    int weight=int.parse(stdin.readLineSync()!);
    var KgtoGramAns= weight*1000;
    print("Thus, $weight kg = $KgtoGramAns g");
    countineOrNot();
  }

  GramstoKg()
  {
    print("Please Enter Value in Grams");
    int weight=int.parse(stdin.readLineSync()!);
    var GramtoKgAns= weight*1000;
    print("Thus, $weight grams = $GramtoKgAns kg");
    countineOrNot();
  }

  PoundstoKg()
  {
    print("Please Enter Value in Pounds");
    int weight=int.parse(stdin.readLineSync()!);
    var PoundstoKgAns= weight*0.45359237;
    print("Thus, $weight Pounds = $PoundstoKgAns kg");
    countineOrNot();
  }

  KgtoTons()
  {
    print("Please Enter Value in KG");
    int weight=int.parse(stdin.readLineSync()!);
    var KgtoTonsAns= weight/1000;
    print("Thus, $weight KG = $KgtoTonsAns Tons");
    countineOrNot();
  }

  TonstoKg()
  {
    print("Please Enter Value in Tons");
    int weight=int.parse(stdin.readLineSync()!);
    var TonsToKgAns= weight/1000;
    print("Thus, $weight Tons = $TonsToKgAns KG");
    countineOrNot();
  }


  print("Which Weight Conversion Do You Want?");
  print("1) Kg to Grams\n2) Grams to Kg\n3) Pounds to Kg\n4) Kg to Tons\n5) Tons to Kg");
  var weightUnit=stdin.readLineSync();
  if(weightUnit=="1")
  {
    KgtoGrams();
  }
  else if(weightUnit=="2")
  {
    GramstoKg();
  }
  else if(weightUnit=="3")
  {
    PoundstoKg();
  }
  else if(weightUnit=="4")
  {
    KgtoTons();
  }
  else if(weightUnit=="5")
  {
    TonstoKg();
  }
}

timeConversion()
{

  print("Which Time Conversion Do You Want?");
  print("1) Seconds to Minutes\n2) Minutes to Seconds\n3) Minutes to Hours\n4) Seconds to Hours\n5) Milliseconds to Minutes\n 6) Milliseconds to Hours");
  var weightUnit=stdin.readLineSync();

  SecondstoMinutes()
  {
    print("Please Enter Value in Seconds");
    int Time=int.parse(stdin.readLineSync()!);
    var SecondstoMinutesAns= Time/60;
    print("Thus, $Time sec = $SecondstoMinutesAns Minutes");
    countineOrNot();
  }

  MinutestoSeconds()
  {
    print("Please Enter Value in Minutes");
    int Time=int.parse(stdin.readLineSync()!);
    var SecondstoMinutesAns= Time*60;
    print("Thus, $Time Minutes = $SecondstoMinutesAns Seconds");
    countineOrNot();
  }

  MinutestoHours(){
    print("Please Enter Value in Minutes");
    int Time=int.parse(stdin.readLineSync()!);
    var SecondstoMinutesAns= Time/60;
    print("Thus, $Time Minutes = $SecondstoMinutesAns Hours");
    countineOrNot();
  }
  SecondstoHours()
  {
    print("Please Enter Value in Seconds");
    int Time=int.parse(stdin.readLineSync()!);
    var SecondstoHoursAns= Time/3600;
    print("Thus, $Time Seconds = $SecondstoHoursAns Hours");
    countineOrNot();
  }
  MillisecondstoMinutes()
  {
    print("Please Enter Value in Milliseconds");
    int Time=int.parse(stdin.readLineSync()!);
    var SecondstoHoursAns= Time/60000;
    print("Thus, $Time Milliseconds = $SecondstoHoursAns Minutes");
    countineOrNot();
  }
  MillisecondstoHours()
  {
    print("Please Enter Value in Milliseconds");
    int Time=int.parse(stdin.readLineSync()!);
    var SecondstoHoursAns= Time/3600000;
    print("Thus, $Time Milliseconds = $SecondstoHoursAns Hours");
    countineOrNot();
  }


  print("Which Time Conversion Do You Want?");
  print("1) Seconds to Minutes\n2) Minutes to Seconds\n3) Minutes to Hours\n4) Seconds to Hours\n5) Milliseconds to Minutes\n6) Milliseconds to Hours");
  var timeUnit=stdin.readLineSync();
  if(timeUnit=="1")
  {
    SecondstoMinutes();
  }
  else if(timeUnit=="2")
  {
    MinutestoSeconds();
  }
  else if(timeUnit=="3")
  {
    MinutestoHours();
  }
  else if(timeUnit=="4")
  {
    SecondstoHours();
  }
  else if(timeUnit=="5")
  {
    MillisecondstoMinutes();
  }
  else if(timeUnit=="6")
  {
    MillisecondstoHours();
  }
}

countineOrNot()
{
print("Do you want to Continue");
print("yes\nno");
 var Continue=stdin.readLineSync()!;
 var toLower=Continue.toLowerCase();
  if(toLower=="yes")
  {
    isCompleted=false;
  }
  else{
    isCompleted=true;
    print("Bye");
  }
}