package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2259:Class;
      
      private var var_2261:Class;
      
      private var var_2260:String;
      
      private var var_1367:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2260 = param1;
         var_2261 = param2;
         var_2259 = param3;
         if(rest == null)
         {
            var_1367 = new Array();
         }
         else
         {
            var_1367 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2259;
      }
      
      public function get assetClass() : Class
      {
         return var_2261;
      }
      
      public function get mimeType() : String
      {
         return var_2260;
      }
      
      public function get fileTypes() : Array
      {
         return var_1367;
      }
   }
}
