package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1657:int;
      
      private var var_1406:int;
      
      private var var_1651:int;
      
      private var var_1652:int;
      
      private var var_1654:int;
      
      private var var_1405:int;
      
      private var var_1655:int;
      
      private var var_1241:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1657;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1406;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1655;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1652;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1654;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1405;
      }
      
      public function get commission() : int
      {
         return var_1651;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1241 = param1.readBoolean();
         var_1651 = param1.readInteger();
         var_1406 = param1.readInteger();
         var_1405 = param1.readInteger();
         var_1652 = param1.readInteger();
         var_1657 = param1.readInteger();
         var_1654 = param1.readInteger();
         var_1655 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1241;
      }
   }
}
