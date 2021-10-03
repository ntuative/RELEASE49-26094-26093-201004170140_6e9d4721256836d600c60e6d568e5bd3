package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2233:String;
      
      private var var_1222:String;
      
      private var var_2234:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2234 = param1;
         var_1222 = param2;
         var_2233 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2234,var_1222,var_2233];
      }
      
      public function dispose() : void
      {
      }
   }
}
