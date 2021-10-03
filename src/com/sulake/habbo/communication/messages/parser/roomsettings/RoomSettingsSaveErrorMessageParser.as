package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1591:int = 9;
      
      public static const const_1621:int = 4;
      
      public static const const_1525:int = 1;
      
      public static const const_1388:int = 10;
      
      public static const const_1530:int = 2;
      
      public static const const_1399:int = 7;
      
      public static const const_1400:int = 11;
      
      public static const const_1522:int = 3;
      
      public static const const_1162:int = 8;
      
      public static const const_1296:int = 5;
      
      public static const const_1507:int = 6;
      
      public static const const_1380:int = 12;
       
      
      private var var_2202:String;
      
      private var _roomId:int;
      
      private var var_1126:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2202;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1126 = param1.readInteger();
         var_2202 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1126;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
