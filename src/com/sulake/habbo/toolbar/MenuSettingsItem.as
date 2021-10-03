package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1707:Array;
      
      private var var_1705:String;
      
      private var var_1706:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1705 = param1;
         var_1707 = param2;
         var_1706 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1705;
      }
      
      public function get yieldList() : Array
      {
         return var_1707;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1706;
      }
   }
}
