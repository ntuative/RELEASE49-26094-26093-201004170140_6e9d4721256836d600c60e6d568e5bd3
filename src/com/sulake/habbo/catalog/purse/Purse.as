package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1566:int = 0;
      
      private var var_2168:int = 0;
      
      private var var_1861:Boolean = false;
      
      private var var_1797:int = 0;
      
      private var var_1567:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubPeriods() : int
      {
         return var_1567;
      }
      
      public function get clubDays() : int
      {
         return var_1566;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2168 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2168;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1566 > 0 || var_1567 > 0;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1566 = param1;
      }
      
      public function get credits() : int
      {
         return var_1797;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1861;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1861 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1797 = param1;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1567 = param1;
      }
   }
}
