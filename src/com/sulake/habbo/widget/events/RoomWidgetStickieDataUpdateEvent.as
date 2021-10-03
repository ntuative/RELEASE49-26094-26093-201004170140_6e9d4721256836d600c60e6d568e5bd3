package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_577:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_188:String;
      
      private var var_716:String;
      
      private var var_1548:String;
      
      private var var_150:int = -1;
      
      private var var_47:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_150 = param2;
         var_1548 = param3;
         var_188 = param4;
         var_716 = param5;
         var_47 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1548;
      }
      
      public function get colorHex() : String
      {
         return var_716;
      }
      
      public function get text() : String
      {
         return var_188;
      }
      
      public function get objectId() : int
      {
         return var_150;
      }
      
      public function get controller() : Boolean
      {
         return var_47;
      }
   }
}
