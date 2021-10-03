package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_135;
         param1["bound_to_parent_rect"] = const_90;
         param1["child_window"] = const_918;
         param1["embedded_controller"] = const_297;
         param1["resize_to_accommodate_children"] = const_68;
         param1["input_event_processor"] = const_48;
         param1["internal_event_handling"] = const_705;
         param1["mouse_dragging_target"] = const_214;
         param1["mouse_dragging_trigger"] = const_342;
         param1["mouse_scaling_target"] = const_268;
         param1["mouse_scaling_trigger"] = const_460;
         param1["horizontal_mouse_scaling_trigger"] = const_209;
         param1["vertical_mouse_scaling_trigger"] = const_203;
         param1["observe_parent_input_events"] = const_960;
         param1["optimize_region_to_layout_size"] = const_441;
         param1["parent_window"] = const_811;
         param1["relative_horizontal_scale_center"] = const_158;
         param1["relative_horizontal_scale_fixed"] = const_111;
         param1["relative_horizontal_scale_move"] = const_336;
         param1["relative_horizontal_scale_strech"] = const_276;
         param1["relative_scale_center"] = const_895;
         param1["relative_scale_fixed"] = const_733;
         param1["relative_scale_move"] = const_995;
         param1["relative_scale_strech"] = const_878;
         param1["relative_vertical_scale_center"] = const_160;
         param1["relative_vertical_scale_fixed"] = const_117;
         param1["relative_vertical_scale_move"] = const_330;
         param1["relative_vertical_scale_strech"] = const_258;
         param1["on_resize_align_left"] = const_736;
         param1["on_resize_align_right"] = const_468;
         param1["on_resize_align_center"] = const_403;
         param1["on_resize_align_top"] = const_636;
         param1["on_resize_align_bottom"] = const_379;
         param1["on_resize_align_middle"] = const_484;
         param1["on_accommodate_align_left"] = const_916;
         param1["on_accommodate_align_right"] = const_422;
         param1["on_accommodate_align_center"] = const_536;
         param1["on_accommodate_align_top"] = const_1011;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_660;
         param1["route_input_events_to_parent"] = const_369;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1003;
         param1["scalable_with_mouse"] = const_931;
         param1["reflect_horizontal_resize_to_parent"] = const_386;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_259;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
