package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_119:int = 0;
      
      public static const const_128:int = 1;
      
      public static const const_103:int = 2;
      
      public static const const_582:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1312:int = 0;
      
      private var var_2083:String = "";
      
      private var var_188:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_188 = param2;
         var_1312 = param3;
         var_2083 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2083;
      }
      
      public function get chatType() : int
      {
         return var_1312;
      }
      
      public function get text() : String
      {
         return var_188;
      }
   }
}
