/**********************************************************
* Arduino_SerialControl
* Description: Interprets serial character commands and saves as integers
* Usage:
* Send the string "s4 483 2047 e" over serial. The three integer numbers should be echoed back
**********************************************************/

#include <string.h>
#include <SPI.h>

//Global variables
int datafrompc[64]; //received numerical/integer data from PC, up to 64 numbers at a time
String inString = ""; //string buffer
int numCount = 0;  //received numberical/integer count
bool inPacket = false; //receiving/interpreting a packet state machine
int led1 = 2;
int led2 = 3;
int led3 = 4;

/**********************************************************
* setup: 
* Runs once when the Arduino board is reset
**********************************************************/
void setup() {
  pinMode(led1,OUTPUT);
  pinMode(led2,OUTPUT);
  pinMode(led3,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(13, OUTPUT);
  digitalWrite(10,HIGH);
  digitalWrite(11,LOW);
  digitalWrite(13,LOW);
  digitalWrite(led1,LOW);
  digitalWrite(led2,LOW);
  digitalWrite(led3,LOW);
  
  //init COM port serial at 9600baud
  Serial.begin(9600);
  
  //init SPI output
  SPI.setClockDivider(SPI_CLOCK_DIV128); //2MHz SPI rate
  //SPI.setDataMode(SPI_MODE0); 
  SPI.begin();
}

/**********************************************************
* loop: 
* Loops indefinitely once setup() has been run
**********************************************************/
void loop() {

  //see if there is any serial data to read
  int byteCount = Serial.available();
  if(byteCount>0) //got some serial data to read
  {
    digitalWrite(7,HIGH);
    for(int i=0; i<byteCount; i++)
    {
        int inChar = Serial.read();
        if(inChar == 's') //start of packet detected
        {
            inPacket = true; //currently receiving a packet
            numCount = 0;
            inString = "";
        }
        else if(inChar == 'e') //end of packet detected
        {
            inPacket = false; //finished receiving a packet

            //print first 3 received integers back to Serial for debugging purposes
            Serial.print("int1: ");
            Serial.print(datafrompc[0]);
            Serial.print("\tint2: ");
            Serial.print(datafrompc[1]);
            Serial.print("\tint3: ");
            Serial.print(datafrompc[2]);
            Serial.println("");
            
            //**********************
            // do something useful with data here - i.e. send over SPI

            if(datafrompc[0] == 1)
            {
              digitalWrite(led1,HIGH);
              if(datafrompc[1] == 1)
              {
                digitalWrite(led2, HIGH);
                if(datafrompc[2] == 2047)
                {
                  digitalWrite(led3,HIGH);
                }
              }
            }
            else
            {
              digitalWrite(led1,LOW);
              digitalWrite(led2,LOW);
              digitalWrite(led3,LOW);
              digitalWrite(7,LOW);
            }
            sendData(datafrompc[0],datafrompc[1],datafrompc[2]);
            //**********************
            
            for(int i=0; i<64; i++) //reset integer data
            {
              datafrompc[i] = 0;
            }
        }
        else if(inPacket) //processing integer data from a packet being received
        {
            if(isDigit(inChar))
            {
               inString += (char)inChar; //append digit to string buffer
            }
            else
            {
               datafrompc[numCount] = inString.toInt(); //convert character digits to an integer
               numCount++; //increment count of integers received so far. Maximum allowable = 64.
               inString = ""; //reset string buffer for interpreting next integer
            }
        }
        else 
        {
          //something unexpected happened  
        }
    } // end for(int i=0; i<byteCount; i++)
  } // end if(byteCount>0)
}

const int CS = 10;
void sendData (byte psch, unsigned int addr, unsigned int value)
{
  byte cmd = addr<<3;
  byte data_l = value>>8;
  byte data_h = value;
  digitalWrite(CS, LOW);
  delayMicroseconds(10); //give powersupply time to get ready for SPI packet
  SPI.transfer(psch);
  SPI.transfer(cmd);
  SPI.transfer(data_l);
  SPI.transfer(data_h);
  digitalWrite(CS, HIGH);
  delay(50); //allow time for MCP48FEB22 EEPROM write to complete before next SPI command
}
