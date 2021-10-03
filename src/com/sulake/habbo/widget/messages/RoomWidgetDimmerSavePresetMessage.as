package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_555:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2066:int;
      
      private var var_2068:int;
      
      private var var_2067:Boolean;
      
      private var var_1018:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_555);
         var_2068 = param1;
         var_2066 = param2;
         _color = param3;
         var_1018 = param4;
         var_2067 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2066;
      }
      
      public function get presetNumber() : int
      {
         return var_2068;
      }
      
      public function get brightness() : int
      {
         return var_1018;
      }
      
      public function get apply() : Boolean
      {
         return var_2067;
      }
   }
}
