package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1952:Number = 0;
      
      private var var_1953:Number = 0;
      
      private var var_1951:Number = 0;
      
      private var var_1950:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1953 = param1;
         var_1951 = param2;
         var_1952 = param3;
         var_1950 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1953;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1952;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1951;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1950;
      }
   }
}
