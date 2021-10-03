package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2072:int;
      
      private var var_2073:Boolean;
      
      private var _offerId:int;
      
      private var var_1891:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2073 = param1.readBoolean();
         var_2072 = param1.readInteger();
         var_1891 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1891;
      }
      
      public function get monthsRequired() : int
      {
         return var_2072;
      }
      
      public function get isVip() : Boolean
      {
         return var_2073;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
