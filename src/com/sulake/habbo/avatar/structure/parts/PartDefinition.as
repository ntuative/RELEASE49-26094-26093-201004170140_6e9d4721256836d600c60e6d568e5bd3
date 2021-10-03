package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1443:int = -1;
      
      private var var_1167:Boolean;
      
      private var var_1166:String;
      
      private var var_1766:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1766 = String(param1["set-type"]);
         var_1166 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1167 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1443 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1166;
      }
      
      public function get staticId() : int
      {
         return var_1443;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1443 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1167;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1167 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1166 = param1;
      }
      
      public function get setType() : String
      {
         return var_1766;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
