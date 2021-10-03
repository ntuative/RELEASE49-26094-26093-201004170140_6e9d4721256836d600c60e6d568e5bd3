package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_370:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_505:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_716:String;
      
      private var var_150:int;
      
      private var var_188:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_150 = param2;
         var_188 = param3;
         var_716 = param4;
      }
      
      public function get objectId() : int
      {
         return var_150;
      }
      
      public function get text() : String
      {
         return var_188;
      }
      
      public function get colorHex() : String
      {
         return var_716;
      }
   }
}
