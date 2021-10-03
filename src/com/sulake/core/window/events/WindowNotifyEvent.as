package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1383:String = "WN_CREATED";
      
      public static const const_859:String = "WN_DISABLE";
      
      public static const const_881:String = "WN_DEACTIVATED";
      
      public static const const_1029:String = "WN_OPENED";
      
      public static const const_836:String = "WN_CLOSED";
      
      public static const const_1002:String = "WN_DESTROY";
      
      public static const const_1532:String = "WN_ARRANGED";
      
      public static const const_389:String = "WN_PARENT_RESIZED";
      
      public static const const_944:String = "WN_ENABLE";
      
      public static const const_910:String = "WN_RELOCATE";
      
      public static const const_1016:String = "WN_FOCUS";
      
      public static const const_962:String = "WN_PARENT_RELOCATED";
      
      public static const const_425:String = "WN_PARAM_UPDATED";
      
      public static const const_519:String = "WN_PARENT_ACTIVATED";
      
      public static const const_168:String = "WN_RESIZED";
      
      public static const const_869:String = "WN_CLOSE";
      
      public static const const_997:String = "WN_PARENT_REMOVED";
      
      public static const const_272:String = "WN_CHILD_RELOCATED";
      
      public static const const_541:String = "WN_ENABLED";
      
      public static const const_274:String = "WN_CHILD_RESIZED";
      
      public static const const_1030:String = "WN_MINIMIZED";
      
      public static const const_565:String = "WN_DISABLED";
      
      public static const const_212:String = "WN_CHILD_ACTIVATED";
      
      public static const const_357:String = "WN_STATE_UPDATED";
      
      public static const const_537:String = "WN_UNSELECTED";
      
      public static const const_437:String = "WN_STYLE_UPDATED";
      
      public static const const_1602:String = "WN_UPDATE";
      
      public static const const_433:String = "WN_PARENT_ADDED";
      
      public static const const_620:String = "WN_RESIZE";
      
      public static const const_670:String = "WN_CHILD_REMOVED";
      
      public static const const_1546:String = "";
      
      public static const const_830:String = "WN_RESTORED";
      
      public static const const_314:String = "WN_SELECTED";
      
      public static const const_958:String = "WN_MINIMIZE";
      
      public static const const_1005:String = "WN_FOCUSED";
      
      public static const const_1347:String = "WN_LOCK";
      
      public static const const_329:String = "WN_CHILD_ADDED";
      
      public static const const_949:String = "WN_UNFOCUSED";
      
      public static const const_430:String = "WN_RELOCATED";
      
      public static const const_847:String = "WN_DEACTIVATE";
      
      public static const const_1299:String = "WN_CRETAE";
      
      public static const const_965:String = "WN_RESTORE";
      
      public static const const_282:String = "WN_ACTVATED";
      
      public static const const_1293:String = "WN_LOCKED";
      
      public static const const_371:String = "WN_SELECT";
      
      public static const const_902:String = "WN_MAXIMIZE";
      
      public static const const_983:String = "WN_OPEN";
      
      public static const const_630:String = "WN_UNSELECT";
      
      public static const const_1561:String = "WN_ARRANGE";
      
      public static const const_1291:String = "WN_UNLOCKED";
      
      public static const const_1547:String = "WN_UPDATED";
      
      public static const const_819:String = "WN_ACTIVATE";
      
      public static const const_1288:String = "WN_UNLOCK";
      
      public static const const_947:String = "WN_MAXIMIZED";
      
      public static const const_800:String = "WN_DESTROYED";
      
      public static const const_956:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1615,cancelable);
      }
   }
}
