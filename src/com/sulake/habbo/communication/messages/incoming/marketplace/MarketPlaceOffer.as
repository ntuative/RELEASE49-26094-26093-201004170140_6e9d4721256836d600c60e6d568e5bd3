package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1185:int;
      
      private var var_1712:int = -1;
      
      private var var_377:int;
      
      private var var_1695:int;
      
      private var var_1714:int;
      
      private var _offerId:int;
      
      private var var_1184:int;
      
      private var var_1713:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1713 = param2;
         var_1714 = param3;
         var_1185 = param4;
         var_377 = param5;
         var_1712 = param6;
         var_1695 = param7;
         var_1184 = param8;
      }
      
      public function get status() : int
      {
         return var_377;
      }
      
      public function get price() : int
      {
         return var_1185;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1712;
      }
      
      public function get offerCount() : int
      {
         return var_1184;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1714;
      }
      
      public function get averagePrice() : int
      {
         return var_1695;
      }
      
      public function get furniId() : int
      {
         return var_1713;
      }
   }
}
