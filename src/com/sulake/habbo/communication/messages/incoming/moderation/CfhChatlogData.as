package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1780:int;
      
      private var var_968:int;
      
      private var var_1916:int;
      
      private var var_1500:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1500 = param1.readInteger();
         var_1916 = param1.readInteger();
         var_968 = param1.readInteger();
         var_1780 = param1.readInteger();
         var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1500);
      }
      
      public function get chatRecordId() : int
      {
         return var_1780;
      }
      
      public function get reportedUserId() : int
      {
         return var_968;
      }
      
      public function get callerUserId() : int
      {
         return var_1916;
      }
      
      public function get callId() : int
      {
         return var_1500;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_111;
      }
   }
}
