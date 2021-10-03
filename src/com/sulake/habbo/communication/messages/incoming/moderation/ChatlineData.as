package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1505:String;
      
      private var var_2098:int;
      
      private var var_2099:int;
      
      private var var_2100:int;
      
      private var var_2097:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2098 = param1.readInteger();
         var_2100 = param1.readInteger();
         var_2099 = param1.readInteger();
         var_2097 = param1.readString();
         var_1505 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1505;
      }
      
      public function get hour() : int
      {
         return var_2098;
      }
      
      public function get minute() : int
      {
         return var_2100;
      }
      
      public function get chatterName() : String
      {
         return var_2097;
      }
      
      public function get chatterId() : int
      {
         return var_2099;
      }
   }
}
