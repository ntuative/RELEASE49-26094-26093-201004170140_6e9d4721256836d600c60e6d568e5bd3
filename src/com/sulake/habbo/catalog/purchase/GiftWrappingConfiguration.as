package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_553:Array;
      
      private var var_1185:int;
      
      private var var_1407:Array;
      
      private var var_554:Array;
      
      private var var_1241:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1241 = _loc2_.isWrappingEnabled;
         var_1185 = _loc2_.wrappingPrice;
         var_1407 = _loc2_.stuffTypes;
         var_554 = _loc2_.boxTypes;
         var_553 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_553;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1407;
      }
      
      public function get price() : int
      {
         return var_1185;
      }
      
      public function get boxTypes() : Array
      {
         return var_554;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1241;
      }
   }
}
