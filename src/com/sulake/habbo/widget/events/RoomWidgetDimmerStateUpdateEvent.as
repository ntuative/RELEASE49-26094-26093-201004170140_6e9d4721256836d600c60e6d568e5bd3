package com.sulake.habbo.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_66:String = "RWDSUE_DIMMER_STATE";
       
      
      private var var_1019:int;
      
      private var _color:uint;
      
      private var var_1018:int;
      
      private var var_1678:int;
      
      private var var_32:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_66,param6,param7);
         var_32 = param1;
         var_1678 = param2;
         var_1019 = param3;
         _color = param4;
         var_1018 = param5;
      }
      
      public function get brightness() : uint
      {
         return var_1018;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1019;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function get presetId() : int
      {
         return var_1678;
      }
   }
}
