package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SignMessageComposer implements IMessageComposer
   {
       
      
      private var var_2119:int;
      
      public function SignMessageComposer(param1:int)
      {
         super();
         var_2119 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2119];
      }
      
      public function dispose() : void
      {
      }
   }
}
