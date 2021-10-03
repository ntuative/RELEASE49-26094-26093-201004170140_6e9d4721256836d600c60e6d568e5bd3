package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1474:String;
      
      private var var_944:String;
      
      private var var_1473:String;
      
      private var var_1472:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1472 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1474 = _loc5_[0];
         var_1473 = _loc5_[1];
         _name = param2;
         var_944 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1474;
      }
      
      public function get languageCode() : String
      {
         return var_1472;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_944;
      }
      
      public function get encoding() : String
      {
         return var_1473;
      }
      
      public function get id() : String
      {
         return var_1472 + "_" + var_1474 + "." + var_1473;
      }
   }
}
