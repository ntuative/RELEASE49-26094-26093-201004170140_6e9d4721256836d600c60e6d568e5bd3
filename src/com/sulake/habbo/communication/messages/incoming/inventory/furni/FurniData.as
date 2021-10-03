package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1394:String;
      
      private var var_1043:String;
      
      private var var_1895:Boolean;
      
      private var var_1552:int;
      
      private var var_1893:int;
      
      private var var_1894:Boolean;
      
      private var var_1499:String = "";
      
      private var var_1897:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1341:int;
      
      private var var_1896:Boolean;
      
      private var var_2013:int = -1;
      
      private var var_1735:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1893 = param1;
         var_1043 = param2;
         _objId = param3;
         var_1341 = param4;
         _category = param5;
         var_1394 = param6;
         var_1895 = param7;
         var_1897 = param8;
         var_1896 = param9;
         var_1894 = param10;
         var_1735 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1499;
      }
      
      public function get extra() : int
      {
         return var_1552;
      }
      
      public function get classId() : int
      {
         return var_1341;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1894;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1895;
      }
      
      public function get stripId() : int
      {
         return var_1893;
      }
      
      public function get stuffData() : String
      {
         return var_1394;
      }
      
      public function get songId() : int
      {
         return var_2013;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1499 = param1;
         var_1552 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1043;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1735;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1896;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1897;
      }
   }
}
