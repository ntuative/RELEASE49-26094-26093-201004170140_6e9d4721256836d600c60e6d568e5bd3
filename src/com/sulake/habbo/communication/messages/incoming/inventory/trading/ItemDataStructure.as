package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1043:String;
      
      private var var_2090:int;
      
      private var var_2087:int;
      
      private var var_1552:int;
      
      private var var_2092:int;
      
      private var _category:int;
      
      private var var_2390:int;
      
      private var var_2085:int;
      
      private var var_2086:int;
      
      private var var_2089:int;
      
      private var var_2091:int;
      
      private var var_2088:Boolean;
      
      private var var_1394:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_2090 = param1;
         var_1043 = param2;
         var_2087 = param3;
         var_2089 = param4;
         _category = param5;
         var_1394 = param6;
         var_1552 = param7;
         var_2086 = param8;
         var_2085 = param9;
         var_2091 = param10;
         var_2092 = param11;
         var_2088 = param12;
      }
      
      public function get method_3() : int
      {
         return var_2089;
      }
      
      public function get extra() : int
      {
         return var_1552;
      }
      
      public function get stuffData() : String
      {
         return var_1394;
      }
      
      public function get groupable() : Boolean
      {
         return var_2088;
      }
      
      public function get creationMonth() : int
      {
         return var_2091;
      }
      
      public function get roomItemID() : int
      {
         return var_2087;
      }
      
      public function get itemType() : String
      {
         return var_1043;
      }
      
      public function get itemID() : int
      {
         return var_2090;
      }
      
      public function get songID() : int
      {
         return var_1552;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2086;
      }
      
      public function get creationYear() : int
      {
         return var_2092;
      }
      
      public function get creationDay() : int
      {
         return var_2085;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
