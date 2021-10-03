package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1067:int = 31;
      
      private static const const_1068:int = 32;
      
      private static const const_758:int = 10;
      
      private static const const_499:int = 20;
       
      
      private var var_567:Boolean = false;
      
      private var var_234:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_234 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_567 = true;
            var_234 = new Array();
            var_234.push(const_1067);
            var_234.push(const_1068);
            return;
         }
         if(param1 > 0 && param1 <= const_758)
         {
            if(var_567)
            {
               var_567 = false;
               var_234 = new Array();
               var_234.push(const_758 + param1);
               var_234.push(const_499 + param1);
               var_234.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
