package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1446:int;
      
      private var var_1770:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1770 = param1.readString();
         var_1446 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1446;
      }
      
      public function get productItemType() : String
      {
         return var_1770;
      }
   }
}
