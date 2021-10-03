package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_295:String;
      
      private var var_1709:int;
      
      private var var_1773:String;
      
      private var var_1010:int;
      
      private var var_1245:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1245;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1245 = param1.readInteger();
         var_1773 = param1.readString();
         var_1709 = param1.readInteger();
         var_295 = param1.readString();
         var_1010 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1773;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_295;
      }
      
      public function get petType() : int
      {
         return var_1010;
      }
      
      public function get level() : int
      {
         return var_1709;
      }
   }
}
