package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1820:int;
      
      private var var_1822:Boolean = false;
      
      private var var_1825:int;
      
      private var var_1824:int;
      
      private var var_1819:int;
      
      private var var_1378:String;
      
      private var var_1185:int;
      
      private var _offerId:int;
      
      private var var_1821:int;
      
      private var var_1826:Boolean;
      
      private var var_1823:Boolean;
      
      private var var_408:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1378 = param2;
         var_1185 = param3;
         var_1823 = param4;
         var_1826 = param5;
         var_1825 = param6;
         var_1819 = param7;
         var_1824 = param8;
         var_1820 = param9;
         var_1821 = param10;
      }
      
      public function get month() : int
      {
         return var_1820;
      }
      
      public function get page() : ICatalogPage
      {
         return var_408;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1826;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_408 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_304;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1823;
      }
      
      public function get localizationId() : String
      {
         return var_1378;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1819;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_1822;
      }
      
      public function get day() : int
      {
         return var_1821;
      }
      
      public function get year() : int
      {
         return var_1824;
      }
      
      public function get price() : int
      {
         return var_1185;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_1822 = param1;
      }
      
      public function get periods() : int
      {
         return var_1825;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1185;
      }
      
      public function get productCode() : String
      {
         return var_1378;
      }
   }
}
