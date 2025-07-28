//+------------------------------------------------------------------+
//|                                              one-click-panel.mq5 |
//|                                        Copyright 2025, Clarence. |
//|                                              https://mcode.co.za |
//+------------------------------------------------------------------+
#property copyright "Copyright 2025, Clarence."
#property link      "https://mcode.co.za"
#property version   "1.00"

#property description "- This is a demonstration of MQL5 GUI."
#property description "- The program does not do anything it only shows a one click panel"
#property description "- You have buttons, labels and text edit that are attached on your chart"

// declaire objects names
string button1 = "Button";
string button2 = "Button2";

string label1 = "Label1";
string label2 = "Label2";
string label3 = "Label3";

string edit1 = "Edit1";
string edit2 = "Edit2";
string edit3 = "Edit3";


//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
      // create two buttons and place them on the upper right conner
      ObjectCreate(0, button1, OBJ_BUTTON, 0, 0, 0);
      ObjectSetInteger(0, button1, OBJPROP_CORNER, CORNER_RIGHT_UPPER);
      ObjectSetInteger(0, button1, OBJPROP_XDISTANCE, 60);
      ObjectSetInteger(0, button1, OBJPROP_YDISTANCE, 20);
      ObjectSetString(0, button1, OBJPROP_TEXT, "BUY");
      ObjectSetInteger(0, button1, OBJPROP_YSIZE, 30);
      ObjectSetInteger(0, button1, OBJPROP_BGCOLOR, clrBlue);
      ObjectSetInteger(0, button1, OBJPROP_COLOR, clrWhite);
      
      ObjectCreate(0, button2, OBJ_BUTTON, 0, 0, 0);
      ObjectSetInteger(0, button2, OBJPROP_CORNER, CORNER_RIGHT_UPPER);
      ObjectSetInteger(0, button2, OBJPROP_XDISTANCE, ObjectGetInteger(0, button1, OBJPROP_XDISTANCE) + ObjectGetInteger(0, button1, OBJPROP_XSIZE));
      ObjectSetInteger(0, button2, OBJPROP_YDISTANCE, 20);
      ObjectSetString(0, button2, OBJPROP_TEXT, "SELL");
      ObjectSetInteger(0, button2, OBJPROP_YSIZE, 30);
      ObjectSetInteger(0, button2, OBJPROP_BGCOLOR, clrRed);
      ObjectSetInteger(0, button2, OBJPROP_COLOR, clrWhite);
      
      
      // create labels and place them on the upper right corner
      ObjectCreate(0, label1, OBJ_LABEL, 0, 0, 0);
      ObjectSetInteger(0, label1, OBJPROP_CORNER, CORNER_RIGHT_UPPER);
      ObjectSetInteger(0, label1, OBJPROP_XDISTANCE, ObjectGetInteger(0, button2, OBJPROP_XDISTANCE));      
      ObjectSetInteger(0, label1, OBJPROP_YDISTANCE, ObjectGetInteger(0, button1, OBJPROP_YDISTANCE) + ObjectGetInteger(0, button1, OBJPROP_YSIZE));
      ObjectSetString(0, label1, OBJPROP_TEXT, "LOT");     
      ObjectSetInteger(0, label1, OBJPROP_COLOR, clrWhite);
      ObjectSetInteger(0, label1, OBJPROP_XSIZE, ObjectGetInteger(0, button1, OBJPROP_XSIZE) * 1/2);
      
      ObjectCreate(0, label2, OBJ_LABEL, 0, 0, 0);
      ObjectSetInteger(0, label2, OBJPROP_CORNER, CORNER_RIGHT_UPPER);
      ObjectSetInteger(0, label2, OBJPROP_XDISTANCE, ObjectGetInteger(0, "Label1", OBJPROP_XDISTANCE));
      ObjectSetInteger(0, label2, OBJPROP_YDISTANCE, ObjectGetInteger(0, "Label1", OBJPROP_YDISTANCE) + 20);
      ObjectSetString(0, label2, OBJPROP_TEXT, "SL");      
      ObjectSetInteger(0, label2, OBJPROP_COLOR, clrWhite);
      ObjectSetInteger(0, label2, OBJPROP_XSIZE, ObjectGetInteger(0, "Label1", OBJPROP_XSIZE));
      
      ObjectCreate(0, label3, OBJ_LABEL, 0, 0, 0);
      ObjectSetInteger(0, label3, OBJPROP_CORNER, CORNER_RIGHT_UPPER);
      ObjectSetInteger(0, label3, OBJPROP_XDISTANCE, ObjectGetInteger(0, label2, OBJPROP_XDISTANCE));
      ObjectSetInteger(0, label3, OBJPROP_YDISTANCE, ObjectGetInteger(0, label2, OBJPROP_YDISTANCE) + 20);
      ObjectSetString(0, label3, OBJPROP_TEXT, "TP");     
      ObjectSetInteger(0, label3, OBJPROP_COLOR, clrWhite);
      ObjectSetInteger(0, label3, OBJPROP_XSIZE, ObjectGetInteger(0, "Label1", OBJPROP_XSIZE));
      
      
      // create edit text and place them on the upper right conner
      ObjectCreate(0, edit1, OBJ_EDIT, 0, 0, 0);
      ObjectSetInteger(0, edit1, OBJPROP_CORNER, CORNER_RIGHT_UPPER);
      ObjectSetInteger(0, edit1, OBJPROP_XDISTANCE, ObjectGetInteger(0, button1, OBJPROP_XDISTANCE) + (ObjectGetInteger(0, button1, OBJPROP_XSIZE) * 1/2));
      ObjectSetInteger(0, edit1, OBJPROP_YDISTANCE, ObjectGetInteger(0, button1, OBJPROP_YDISTANCE) + ObjectGetInteger(0, button1, OBJPROP_YSIZE));
      ObjectSetString(0, edit1, OBJPROP_TEXT, "1.00");      
      ObjectSetInteger(0, edit1, OBJPROP_BGCOLOR, clrWhite);
      ObjectSetInteger(0, edit1, OBJPROP_COLOR, clrBlack);      
      ObjectSetInteger(0, edit1, OBJPROP_XSIZE, ObjectGetInteger(0, button2, OBJPROP_XSIZE) * 3/2);
      
      ObjectCreate(0, edit2, OBJ_EDIT, 0, 0, 0);
      ObjectSetInteger(0, edit2, OBJPROP_CORNER, CORNER_RIGHT_UPPER);
      ObjectSetInteger(0, edit2, OBJPROP_XDISTANCE, ObjectGetInteger(0, edit1, OBJPROP_XDISTANCE));
      ObjectSetInteger(0, edit2, OBJPROP_YDISTANCE, ObjectGetInteger(0, edit1, OBJPROP_YDISTANCE) + ObjectGetInteger(0, edit1, OBJPROP_YSIZE));
      ObjectSetString(0, edit2, OBJPROP_TEXT, "20.0");
      ObjectSetInteger(0, edit2, OBJPROP_BGCOLOR, clrWhite);
      ObjectSetInteger(0, edit2, OBJPROP_COLOR, clrBlack);      
      ObjectSetInteger(0, edit2, OBJPROP_XSIZE, ObjectGetInteger(0, edit1, OBJPROP_XSIZE));
      
      ObjectCreate(0, edit3, OBJ_EDIT, 0, 0, 0);
      ObjectSetInteger(0, edit3, OBJPROP_CORNER, CORNER_RIGHT_UPPER);
      ObjectSetInteger(0, edit3, OBJPROP_XDISTANCE, ObjectGetInteger(0, edit2, OBJPROP_XDISTANCE));
      ObjectSetInteger(0, edit3, OBJPROP_YDISTANCE, ObjectGetInteger(0, edit2, OBJPROP_YDISTANCE) + ObjectGetInteger(0, edit2, OBJPROP_YSIZE));
      ObjectSetString(0, edit3, OBJPROP_TEXT, "30.0");
      ObjectSetInteger(0, edit3, OBJPROP_BGCOLOR, clrWhite);
      ObjectSetInteger(0, edit3, OBJPROP_COLOR, clrBlack);      
      ObjectSetInteger(0, edit3, OBJPROP_XSIZE, ObjectGetInteger(0, edit2, OBJPROP_XSIZE));
               
  }
//+------------------------------------------------------------------+
