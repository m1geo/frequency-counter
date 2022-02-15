/*
  fpga
  wire   arduino   fpga
  green  11(MOSI)  41
  red    13(SCK)   39
  white  12(MISO)  38
  black  A5(SSEL)  40

  display
  green  A4(SDA)   SDA
  white  A5(SCL)   SCK
*/
#include <Wire.h> 
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x27 for a 16 chars and 2 line display

#include <SPI.h>
#define FPGA_SSEL 10

void setup() {
  SPI.begin();
  Serial.begin(115200);
  Serial.println("\n\n\rM1GEO SPI thing");
  pinMode(FPGA_SSEL, OUTPUT);
  digitalWrite(FPGA_SSEL, HIGH);
  lcd.init();
  lcd.backlight();
  lcd.setCursor(3,0);
  lcd.print("M1GEO TEST");
  lcd.setCursor(1,1);
  lcd.print("FPGA FREQ CNTR");
  delay(1000);
  lcd.clear();
}

unsigned long longnum = 0;

void printcomma (unsigned long int n) {
    if (n < 1000) {
      if (n<100) lcd.print(' ');
      if (n<10) lcd.print(' ');
      lcd.print(n);
        return;
    }
    printcomma (n/1000);
    int m = n%1000;
    lcd.print(',');
    if (m<100) lcd.print('0');
    if (m<10) lcd.print('0');
    lcd.print(m);
}

void loop() {
  // do a read
  digitalWrite(FPGA_SSEL, LOW);
  unsigned long a = SPI.transfer16(0); // msb first
  unsigned long b = SPI.transfer16(0); // lsb last
  digitalWrite(FPGA_SSEL, HIGH);
  longnum = (a << 16) | b;
  /*Serial.print(millis());
  Serial.print(": received: 0x");
  Serial.print(longnum, HEX);
  Serial.print(" ");*/
  Serial.println(longnum);
  lcd.clear();
  if (longnum>1E6)
    lcd.setCursor(2,0);
  else if (longnum>1E3)
    lcd.setCursor(6,0);
  else 
    lcd.setCursor(10,0);
  printcomma(longnum);
  lcd.print(" Hz");
  
  delay(1000);
}
