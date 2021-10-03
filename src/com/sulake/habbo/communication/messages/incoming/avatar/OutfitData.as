package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2029:String;
      
      private var var_587:String;
      
      private var var_1499:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1499 = param1.readInteger();
         var_2029 = param1.readString();
         var_587 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_587;
      }
      
      public function get figureString() : String
      {
         return var_2029;
      }
      
      public function get slotId() : int
      {
         return var_1499;
      }
   }
}
