package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1510:String;
      
      private var var_1526:String;
      
      private var var_1038:String;
      
      private var var_445:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1510 = String(param1.@align);
         var_1038 = String(param1.@base);
         var_1526 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_445 = Number(_loc2_);
            if(var_445 > 1)
            {
               var_445 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1510;
      }
      
      public function get ink() : String
      {
         return var_1526;
      }
      
      public function get base() : String
      {
         return var_1038;
      }
      
      public function get isBlended() : Boolean
      {
         return var_445 != 1;
      }
      
      public function get blend() : Number
      {
         return var_445;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
