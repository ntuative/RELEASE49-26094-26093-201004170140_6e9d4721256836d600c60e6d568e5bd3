package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1731:Boolean = false;
      
      private var var_1730:Boolean = false;
      
      private var var_1694:String = "";
      
      private var _type:String = "";
      
      private var var_1733:Boolean = false;
      
      private var var_1814:Number = 0;
      
      private var var_1815:Number = 0;
      
      private var var_1813:Number = 0;
      
      private var var_1812:String = "";
      
      private var var_1816:Number = 0;
      
      private var var_1732:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1812 = param2;
         var_1694 = param3;
         var_1815 = param4;
         var_1813 = param5;
         var_1814 = param6;
         var_1816 = param7;
         var_1732 = param8;
         var_1730 = param9;
         var_1733 = param10;
         var_1731 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1732;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1731;
      }
      
      public function get localX() : Number
      {
         return var_1814;
      }
      
      public function get localY() : Number
      {
         return var_1816;
      }
      
      public function get canvasId() : String
      {
         return var_1812;
      }
      
      public function get altKey() : Boolean
      {
         return var_1730;
      }
      
      public function get spriteTag() : String
      {
         return var_1694;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1815;
      }
      
      public function get method_13() : Number
      {
         return var_1813;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1733;
      }
   }
}
