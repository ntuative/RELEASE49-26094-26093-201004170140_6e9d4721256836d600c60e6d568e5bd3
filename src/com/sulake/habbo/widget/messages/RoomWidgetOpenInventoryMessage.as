package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_809:String = "inventory_badges";
      
      public static const const_1384:String = "inventory_clothes";
      
      public static const const_1158:String = "inventory_furniture";
      
      public static const const_524:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_843:String = "inventory_effects";
       
      
      private var var_2124:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_524);
         var_2124 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2124;
      }
   }
}
