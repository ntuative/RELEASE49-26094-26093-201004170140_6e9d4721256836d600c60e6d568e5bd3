package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1527:Array;
      
      private var var_1695:int;
      
      private var var_1698:int;
      
      private var var_1696:int;
      
      private var var_1699:int;
      
      private var _dayOffsets:Array;
      
      private var var_1697:int;
      
      private var var_1528:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1527;
      }
      
      public function get furniTypeId() : int
      {
         return var_1698;
      }
      
      public function get historyLength() : int
      {
         return var_1699;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1696;
      }
      
      public function get offerCount() : int
      {
         return var_1697;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1528;
      }
      
      public function get averagePrice() : int
      {
         return var_1695;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1695 = param1.readInteger();
         var_1697 = param1.readInteger();
         var_1699 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1527 = [];
         var_1528 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1527.push(param1.readInteger());
            var_1528.push(param1.readInteger());
            _loc3_++;
         }
         var_1696 = param1.readInteger();
         var_1698 = param1.readInteger();
         return true;
      }
   }
}
