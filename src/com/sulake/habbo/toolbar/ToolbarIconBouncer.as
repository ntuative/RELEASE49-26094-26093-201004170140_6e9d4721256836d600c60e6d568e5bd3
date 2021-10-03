package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2052:Number;
      
      private var var_602:Number = 0;
      
      private var var_2053:Number;
      
      private var var_603:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2052 = param1;
         var_2053 = param2;
      }
      
      public function update() : void
      {
         var_603 += var_2053;
         var_602 += var_603;
         if(var_602 > 0)
         {
            var_602 = 0;
            var_603 = var_2052 * -1 * var_603;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_603 = param1;
         var_602 = 0;
      }
      
      public function get location() : Number
      {
         return var_602;
      }
   }
}
