package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1129:int = 1;
      
      private static const const_1068:int = 3;
      
      private static const const_1131:int = 2;
      
      private static const const_1130:int = 15;
       
      
      private var var_930:int;
      
      private var var_234:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_234 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1131)
         {
            var_234 = new Array();
            var_234.push(const_1129);
            var_930 = const_1130;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_930 > 0)
         {
            --var_930;
         }
         if(var_930 == 0)
         {
            if(false)
            {
               super.setAnimation(var_234.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
