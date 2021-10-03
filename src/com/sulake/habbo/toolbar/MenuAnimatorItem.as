package com.sulake.habbo.toolbar
{
   import com.sulake.core.window.IWindowContainer;
   import flash.geom.Point;
   
   public class MenuAnimatorItem
   {
       
      
      private var var_1705:String;
      
      private var var_1707:Array;
      
      private var _window:IWindowContainer;
      
      private var var_707:String;
      
      private var _icon:ToolbarIcon;
      
      private var _active:Boolean;
      
      private var var_2115:Point;
      
      private var _target:Point;
      
      private var var_365:Boolean;
      
      private var var_1706:Boolean;
      
      public function MenuAnimatorItem(param1:String, param2:ToolbarIcon)
      {
         super();
         var_1705 = param1;
         _icon = param2;
      }
      
      public function get visible() : Boolean
      {
         return var_365;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1706;
      }
      
      public function get offsetLoc() : Point
      {
         return var_2115;
      }
      
      public function get windowOffsetFromIcon() : int
      {
         return _icon.windowOffsetFromIcon;
      }
      
      public function get yieldList() : Array
      {
         return var_1707;
      }
      
      public function get active() : Boolean
      {
         return _active;
      }
      
      public function get target() : Point
      {
         return _target;
      }
      
      public function set lockToIcon(param1:Boolean) : void
      {
         var_1706 = param1;
      }
      
      public function get menuId() : String
      {
         return var_1705;
      }
      
      public function set active(param1:Boolean) : void
      {
         _active = param1;
      }
      
      public function set yieldList(param1:Array) : void
      {
         var_1707 = param1;
      }
      
      public function set offsetLoc(param1:Point) : void
      {
         var_2115 = param1;
      }
      
      public function set target(param1:Point) : void
      {
         _target = param1;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_365 = param1;
      }
      
      public function set window(param1:IWindowContainer) : void
      {
         _window = param1;
      }
      
      public function set iconId(param1:String) : void
      {
         var_707 = param1;
      }
      
      public function get iconId() : String
      {
         return var_707;
      }
      
      public function get margin() : int
      {
         return _icon.windowMargin;
      }
      
      public function get bottomMargin() : int
      {
         return _icon.group.windowBottomMargin;
      }
      
      public function get window() : IWindowContainer
      {
         return _window;
      }
   }
}
