package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1067:int = 31;
      
      private static const const_1068:int = 32;
      
      private static const const_498:int = 30;
      
      private static const const_758:int = 20;
      
      private static const const_499:int = 10;
       
      
      private var var_567:Boolean = false;
      
      private var var_234:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_234 = new Array();
         super();
         super.setAnimation(const_498);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_567 = true;
            var_234 = new Array();
            var_234.push(const_1067);
            var_234.push(const_1068);
            return;
         }
         if(param1 > 0 && param1 <= const_499)
         {
            if(var_567)
            {
               var_567 = false;
               var_234 = new Array();
               if(_direction == 2)
               {
                  var_234.push(const_758 + 5 - param1);
                  var_234.push(const_499 + 5 - param1);
               }
               else
               {
                  var_234.push(const_758 + param1);
                  var_234.push(const_499 + param1);
               }
               var_234.push(const_498);
               return;
            }
            super.setAnimation(const_498);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
