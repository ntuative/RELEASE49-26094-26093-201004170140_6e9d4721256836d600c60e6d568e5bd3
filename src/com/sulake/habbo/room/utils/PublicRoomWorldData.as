package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1906:Number = 1;
      
      private var var_190:Number = 1;
      
      private var var_1795:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1795 = param1;
         var_190 = param2;
         var_1906 = param3;
      }
      
      public function get scale() : Number
      {
         return var_190;
      }
      
      public function get heightScale() : Number
      {
         return var_1906;
      }
   }
}
