package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_390:int = -2147483648;
      
      private var var_387:int = 2147483647;
      
      private var var_388:int = 2147483647;
      
      private var _target:IWindow;
      
      private var var_389:int = -2147483648;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_387;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_389 == int.MIN_VALUE && var_387 == int.MAX_VALUE && var_390 == int.MIN_VALUE && var_388 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_387 = param1;
         if(var_387 < int.MAX_VALUE && true && _target.width > var_387)
         {
            _target.width = var_387;
         }
      }
      
      public function setEmpty() : void
      {
         var_389 = int.MIN_VALUE;
         var_387 = int.MAX_VALUE;
         var_390 = int.MIN_VALUE;
         var_388 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_388 = param1;
         if(var_388 < int.MAX_VALUE && true && _target.height > var_388)
         {
            _target.height = var_388;
         }
      }
      
      public function get minHeight() : int
      {
         return var_390;
      }
      
      public function get minWidth() : int
      {
         return var_389;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_389 = var_389;
         _loc2_.var_387 = var_387;
         _loc2_.var_390 = var_390;
         _loc2_.var_388 = var_388;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_389 = param1;
         if(var_389 > int.MIN_VALUE && true && _target.width < var_389)
         {
            _target.width = var_389;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_390 = param1;
         if(var_390 > int.MIN_VALUE && true && _target.height < var_390)
         {
            _target.height = var_390;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_388;
      }
   }
}
