package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_351:Number = 0.5;
      
      private static const const_788:int = 3;
      
      private static const const_1117:Number = 1;
       
      
      private var var_2186:Boolean = false;
      
      private var var_2195:Boolean = false;
      
      private var var_1081:int = 0;
      
      private var var_278:Vector3d = null;
      
      private var var_2189:int = 0;
      
      private var var_2187:int = 0;
      
      private var var_2190:Boolean = false;
      
      private var var_2193:int = -2;
      
      private var var_2191:Boolean = false;
      
      private var var_2194:int = 0;
      
      private var var_2188:int = -1;
      
      private var var_440:Vector3d = null;
      
      private var var_2192:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2189;
      }
      
      public function get targetId() : int
      {
         return var_2188;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2194 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2189 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2186 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2188 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2195 = param1;
      }
      
      public function dispose() : void
      {
         var_440 = null;
         var_278 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_440 == null)
         {
            var_440 = new Vector3d();
         }
         var_440.assign(param1);
         var_1081 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2193;
      }
      
      public function get screenHt() : int
      {
         return var_2192;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2187 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_278;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2192 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2194;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2186;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2195;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_440 != null && var_278 != null)
         {
            ++var_1081;
            _loc2_ = Vector3d.dif(var_440,var_278);
            if(_loc2_.length <= const_351)
            {
               var_278 = var_440;
               var_440 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_351 * (const_788 + 1))
               {
                  _loc2_.mul(const_351);
               }
               else if(var_1081 <= const_788)
               {
                  _loc2_.mul(const_351);
               }
               else
               {
                  _loc2_.mul(const_1117);
               }
               var_278 = Vector3d.sum(var_278,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2190 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2187;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2191 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2193 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_278 != null)
         {
            return;
         }
         var_278 = new Vector3d();
         var_278.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2190;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2191;
      }
   }
}
