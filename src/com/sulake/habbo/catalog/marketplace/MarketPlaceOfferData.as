package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1800:int;
      
      private var var_1185:int;
      
      private var var_1695:int;
      
      private var var_1712:int = -1;
      
      private var var_377:int;
      
      private var var_1714:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1184:int;
      
      private var var_1713:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1713 = param2;
         var_1714 = param3;
         var_1185 = param4;
         var_377 = param5;
         var_1695 = param6;
         var_1184 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1800 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1800;
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
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1712 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1185 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1184 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_377;
      }
      
      public function get averagePrice() : int
      {
         return var_1695;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1713;
      }
   }
}
