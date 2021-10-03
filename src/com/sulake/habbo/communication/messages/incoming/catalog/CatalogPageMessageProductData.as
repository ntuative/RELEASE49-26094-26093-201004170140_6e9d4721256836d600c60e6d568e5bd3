package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_228:String = "e";
      
      public static const const_85:String = "i";
      
      public static const const_79:String = "s";
       
      
      private var var_998:String;
      
      private var var_1201:String;
      
      private var var_1198:int;
      
      private var var_1949:int;
      
      private var var_997:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1201 = param1.readString();
         var_1949 = param1.readInteger();
         var_998 = param1.readString();
         var_997 = param1.readInteger();
         var_1198 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_997;
      }
      
      public function get productType() : String
      {
         return var_1201;
      }
      
      public function get expiration() : int
      {
         return var_1198;
      }
      
      public function get furniClassId() : int
      {
         return var_1949;
      }
      
      public function get extraParam() : String
      {
         return var_998;
      }
   }
}
