package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_737;
         param1["bitmap"] = const_602;
         param1["border"] = const_534;
         param1["border_notify"] = const_1248;
         param1["button"] = const_453;
         param1["button_thick"] = const_604;
         param1["button_icon"] = const_1277;
         param1["button_group_left"] = const_629;
         param1["button_group_center"] = const_680;
         param1["button_group_right"] = const_556;
         param1["canvas"] = const_637;
         param1["checkbox"] = const_726;
         param1["closebutton"] = const_872;
         param1["container"] = const_285;
         param1["container_button"] = const_603;
         param1["display_object_wrapper"] = const_542;
         param1["dropmenu"] = const_439;
         param1["dropmenu_item"] = const_387;
         param1["frame"] = const_295;
         param1["frame_notify"] = const_1171;
         param1["header"] = const_709;
         param1["icon"] = const_901;
         param1["itemgrid"] = const_855;
         param1["itemgrid_horizontal"] = const_414;
         param1["itemgrid_vertical"] = const_658;
         param1["itemlist"] = const_993;
         param1["itemlist_horizontal"] = const_292;
         param1["itemlist_vertical"] = const_303;
         param1["maximizebox"] = const_1195;
         param1["menu"] = const_1169;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_914;
         param1["minimizebox"] = const_1173;
         param1["notify"] = const_1216;
         param1["null"] = const_744;
         param1["password"] = const_730;
         param1["radiobutton"] = const_683;
         param1["region"] = const_451;
         param1["restorebox"] = const_1172;
         param1["scaler"] = const_673;
         param1["scaler_horizontal"] = const_1194;
         param1["scaler_vertical"] = const_1344;
         param1["scrollbar_horizontal"] = const_472;
         param1["scrollbar_vertical"] = const_735;
         param1["scrollbar_slider_button_up"] = const_835;
         param1["scrollbar_slider_button_down"] = const_952;
         param1["scrollbar_slider_button_left"] = const_973;
         param1["scrollbar_slider_button_right"] = const_985;
         param1["scrollbar_slider_bar_horizontal"] = const_955;
         param1["scrollbar_slider_bar_vertical"] = const_1000;
         param1["scrollbar_slider_track_horizontal"] = const_989;
         param1["scrollbar_slider_track_vertical"] = const_825;
         param1["scrollable_itemlist"] = const_1323;
         param1["scrollable_itemlist_vertical"] = const_465;
         param1["scrollable_itemlist_horizontal"] = const_804;
         param1["selector"] = const_514;
         param1["selector_list"] = const_615;
         param1["submenu"] = const_914;
         param1["tab_button"] = const_698;
         param1["tab_container_button"] = const_986;
         param1["tab_context"] = const_447;
         param1["tab_content"] = const_1025;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_724;
         param1["input"] = const_607;
         param1["toolbar"] = const_1212;
         param1["tooltip"] = const_294;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
