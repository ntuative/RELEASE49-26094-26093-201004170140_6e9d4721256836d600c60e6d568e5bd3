package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2257:Boolean = false;
      
      private var var_2256:int = 0;
      
      private var var_1566:int = 0;
      
      private var var_2258:int = 0;
      
      private var var_1861:Boolean = false;
      
      private var var_1401:int = 0;
      
      private var var_1567:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1401 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2256;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2257;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2257 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1861;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2256 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1566 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1401;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1861 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2258 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1566;
      }
      
      public function get pixelBalance() : int
      {
         return var_2258;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1567 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1567;
      }
   }
}
