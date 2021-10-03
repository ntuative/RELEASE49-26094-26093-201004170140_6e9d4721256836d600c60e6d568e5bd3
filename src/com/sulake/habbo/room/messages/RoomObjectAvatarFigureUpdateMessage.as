package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1890:String;
      
      private var var_295:String;
      
      private var var_587:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_295 = param1;
         var_587 = param2;
         var_1890 = param3;
      }
      
      public function get race() : String
      {
         return var_1890;
      }
      
      public function get figure() : String
      {
         return var_295;
      }
      
      public function get gender() : String
      {
         return var_587;
      }
   }
}
