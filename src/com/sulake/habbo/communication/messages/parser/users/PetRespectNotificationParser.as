package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1883:int;
      
      private var var_1183:PetData;
      
      private var var_1898:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1883;
      }
      
      public function get petData() : PetData
      {
         return var_1183;
      }
      
      public function flush() : Boolean
      {
         var_1183 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1898;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1883 = param1.readInteger();
         var_1898 = param1.readInteger();
         var_1183 = new PetData(param1);
         return true;
      }
   }
}
