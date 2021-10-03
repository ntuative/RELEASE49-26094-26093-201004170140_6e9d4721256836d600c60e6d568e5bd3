package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1918:String;
      
      private var var_931:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1918 = param1;
         var_931 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1918;
      }
      
      public function get parameter() : String
      {
         return var_931;
      }
   }
}
