package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1820:int;
      
      private var var_1185:int;
      
      private var var_1825:int;
      
      private var _offerId:int;
      
      private var var_1824:int;
      
      private var var_1821:int;
      
      private var var_1826:Boolean;
      
      private var var_1819:int;
      
      private var var_1823:Boolean;
      
      private var var_1378:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1378 = param1.readString();
         var_1185 = param1.readInteger();
         var_1823 = param1.readBoolean();
         var_1826 = param1.readBoolean();
         var_1825 = param1.readInteger();
         var_1819 = param1.readInteger();
         var_1824 = param1.readInteger();
         var_1820 = param1.readInteger();
         var_1821 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1824;
      }
      
      public function get month() : int
      {
         return var_1820;
      }
      
      public function get price() : int
      {
         return var_1185;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1825;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1819;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1823;
      }
      
      public function get day() : int
      {
         return var_1821;
      }
      
      public function get vip() : Boolean
      {
         return var_1826;
      }
      
      public function get productCode() : String
      {
         return var_1378;
      }
   }
}
