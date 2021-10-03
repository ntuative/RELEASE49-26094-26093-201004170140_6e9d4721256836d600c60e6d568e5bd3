package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_436:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_318:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_801:int;
      
      private var var_246:Boolean;
      
      private var var_2064:Boolean;
      
      private var var_1445:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_801 = param2;
         var_2064 = param3;
         var_246 = param4;
         var_1445 = param5;
      }
      
      public function get position() : int
      {
         return var_801;
      }
      
      public function get isActive() : Boolean
      {
         return var_246;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1445;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2064;
      }
   }
}
