package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1893:int;
      
      private var var_1897:Boolean;
      
      private var var_2013:int;
      
      private var var_1394:String;
      
      private var var_2015:Boolean = false;
      
      private var var_1735:int;
      
      private var var_454:int;
      
      private var var_1043:String;
      
      private var var_1499:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1341:int;
      
      private var var_1896:Boolean;
      
      private var var_2014:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1893 = param1;
         var_1043 = param2;
         _objId = param3;
         var_1341 = param4;
         var_1394 = param5;
         var_1897 = param6;
         var_1896 = param7;
         var_1735 = param8;
         var_1499 = param9;
         var_2013 = param10;
         var_454 = -1;
      }
      
      public function get songId() : int
      {
         return var_2013;
      }
      
      public function get iconCallbackId() : int
      {
         return var_454;
      }
      
      public function get expiryTime() : int
      {
         return var_1735;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2014 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2015 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_454 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1896;
      }
      
      public function get slotId() : String
      {
         return var_1499;
      }
      
      public function get classId() : int
      {
         return var_1341;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1897;
      }
      
      public function get stuffData() : String
      {
         return var_1394;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1893;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2015;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2014;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1043;
      }
   }
}
