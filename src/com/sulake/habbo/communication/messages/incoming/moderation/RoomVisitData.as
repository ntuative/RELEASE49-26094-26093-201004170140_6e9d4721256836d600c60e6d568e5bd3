package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_754:String;
      
      private var var_2238:int;
      
      private var var_1448:Boolean;
      
      private var _roomId:int;
      
      private var var_2239:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1448 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_754 = param1.readString();
         var_2239 = param1.readInteger();
         var_2238 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1448;
      }
      
      public function get roomName() : String
      {
         return var_754;
      }
      
      public function get enterMinute() : int
      {
         return var_2238;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2239;
      }
   }
}
