package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_579:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_672:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_239:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1602:Point;
      
      private var var_1601:Rectangle;
      
      private var var_190:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1601 = param2;
         var_1602 = param3;
         var_190 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1601 != null)
         {
            return var_1601.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_190;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1602 != null)
         {
            return var_1602.clone();
         }
         return null;
      }
   }
}
