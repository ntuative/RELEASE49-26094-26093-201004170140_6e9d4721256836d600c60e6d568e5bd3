package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_903:String = "RWOCM_CLUB_MAIN";
      
      public static const const_731:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2084:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_731);
         var_2084 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2084;
      }
   }
}
