package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_662:int = -1;
      
      public static const const_824:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1920:int = -1;
      
      private var var_82:int = 0;
      
      private var var_1243:int = 1;
      
      private var var_841:int = 1;
      
      private var var_1919:Boolean = false;
      
      private var var_1921:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_82 = param2;
         _y = param3;
         var_1919 = param5;
         if(param4 < 0)
         {
            param4 = const_662;
         }
         var_841 = param4;
         var_1243 = param4;
         if(param6 >= 0)
         {
            var_1920 = param6;
            var_1921 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_841 > 0 && param1 > var_841)
         {
            param1 = var_841;
         }
         var_1243 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_841;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1921;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_841 < 0)
         {
            return const_662;
         }
         return var_1243;
      }
      
      public function get activeSequence() : int
      {
         return var_1920;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1919;
      }
      
      public function get x() : int
      {
         return var_82;
      }
   }
}
