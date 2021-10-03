package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1141:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1341:int;
      
      private var var_1043:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_1043 = param2;
         var_1341 = param3;
      }
      
      public function get classId() : int
      {
         return var_1341;
      }
      
      public function get itemType() : String
      {
         return var_1043;
      }
   }
}
