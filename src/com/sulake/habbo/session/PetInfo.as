package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1709:int;
      
      private var var_1883:int;
      
      private var var_1880:int;
      
      private var var_1885:int;
      
      private var _nutrition:int;
      
      private var var_1245:int;
      
      private var var_1882:int;
      
      private var var_1879:int;
      
      private var _energy:int;
      
      private var var_1881:int;
      
      private var var_1884:int;
      
      private var _ownerName:String;
      
      private var var_1878:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1709;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1883 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1709 = param1;
      }
      
      public function get petId() : int
      {
         return var_1245;
      }
      
      public function get experienceMax() : int
      {
         return var_1879;
      }
      
      public function get nutritionMax() : int
      {
         return var_1885;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1882 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1878;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1245 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1884;
      }
      
      public function get respect() : int
      {
         return var_1883;
      }
      
      public function get levelMax() : int
      {
         return var_1882;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1879 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1880 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1885 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1878 = param1;
      }
      
      public function get experience() : int
      {
         return var_1880;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1884 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1881 = param1;
      }
      
      public function get age() : int
      {
         return var_1881;
      }
   }
}
