package com.sulake.habbo.room.events
{
   public class RoomEngineDimmerStateEvent extends RoomEngineEvent
   {
      
      public static const const_66:String = "REDSE_ROOM_COLOR";
       
      
      private var var_1019:int;
      
      private var _color:uint;
      
      private var var_1018:int;
      
      private var var_1678:int;
      
      private var var_32:int;
      
      public function RoomEngineDimmerStateEvent(param1:int, param2:int, param3:int, param4:int, param5:int, param6:uint, param7:uint, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_66,param1,param2,param8,param9);
         var_32 = param3;
         var_1678 = param4;
         var_1019 = param5;
         _color = param6;
         var_1018 = param7;
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
