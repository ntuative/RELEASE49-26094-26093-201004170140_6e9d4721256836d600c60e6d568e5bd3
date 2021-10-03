package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_586:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1683:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_586);
         var_1683 = param1;
      }
      
      public function get tag() : String
      {
         return var_1683;
      }
   }
}
