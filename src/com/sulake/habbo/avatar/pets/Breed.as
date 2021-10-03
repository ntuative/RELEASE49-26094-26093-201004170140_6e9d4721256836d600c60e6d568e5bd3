package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_587:String;
      
      private var _id:int;
      
      private var var_2095:String = "";
      
      private var var_2093:int;
      
      private var var_2094:String;
      
      private var var_1892:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2093 = parseInt(param1.@pattern);
         var_587 = String(param1.@gender);
         var_1892 = Boolean(parseInt(param1.@colorable));
         var_2095 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2095;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1892;
      }
      
      public function get gender() : String
      {
         return var_587;
      }
      
      public function get patternId() : int
      {
         return var_2093;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2094;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2094 = param1;
      }
   }
}
