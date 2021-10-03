package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1012:String = "price_type_none";
      
      public static const const_479:String = "pricing_model_multi";
      
      public static const const_304:String = "price_type_credits";
      
      public static const const_358:String = "price_type_credits_and_pixels";
      
      public static const const_374:String = "pricing_model_bundle";
      
      public static const const_408:String = "pricing_model_single";
      
      public static const const_715:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1373:String = "pricing_model_unknown";
      
      public static const const_410:String = "price_type_pixels";
       
      
      private var var_2167:int;
      
      private var var_907:int;
      
      private var _offerId:int;
      
      private var var_908:int;
      
      private var var_435:String;
      
      private var var_616:String;
      
      private var var_408:ICatalogPage;
      
      private var var_436:IProductContainer;
      
      private var var_1324:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1324 = param1.localizationId;
         var_907 = param1.priceInCredits;
         var_908 = param1.priceInPixels;
         var_408 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_435;
      }
      
      public function get page() : ICatalogPage
      {
         return var_408;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2167 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_436;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_908;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1324 = "";
         var_907 = 0;
         var_908 = 0;
         var_408 = null;
         if(var_436 != null)
         {
            var_436.dispose();
            var_436 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_2167;
      }
      
      public function get priceInCredits() : int
      {
         return var_907;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_435 = const_408;
            }
            else
            {
               var_435 = const_479;
            }
         }
         else if(param1.length > 1)
         {
            var_435 = const_374;
         }
         else
         {
            var_435 = const_1373;
         }
      }
      
      public function get priceType() : String
      {
         return var_616;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_435)
         {
            case const_408:
               var_436 = new SingleProductContainer(this,param1);
               break;
            case const_479:
               var_436 = new MultiProductContainer(this,param1);
               break;
            case const_374:
               var_436 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_435);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1324;
      }
      
      private function analyzePriceType() : void
      {
         if(var_907 > 0 && var_908 > 0)
         {
            var_616 = const_358;
         }
         else if(var_907 > 0)
         {
            var_616 = const_304;
         }
         else if(var_908 > 0)
         {
            var_616 = const_410;
         }
         else
         {
            var_616 = const_1012;
         }
      }
   }
}
