package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2118:Date;
      
      private var var_1296:Boolean = false;
      
      private var _type:int;
      
      private var var_375:BitmapData;
      
      private var var_246:Boolean = false;
      
      private var var_1159:int;
      
      private var var_609:int = 1;
      
      private var var_1059:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_375;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_609;
         if(var_609 < 0)
         {
            var_609 = 0;
         }
         var_1059 = var_1159;
         var_246 = false;
         var_1296 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1059 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_246;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_375 = param1;
      }
      
      public function get duration() : int
      {
         return var_1159;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1296;
      }
      
      public function get effectsInInventory() : int
      {
         return var_609;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_375;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_246)
         {
            var_2118 = new Date();
         }
         var_246 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_609 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_246)
         {
            _loc1_ = var_1059 - (new Date().valueOf() - var_2118.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1059;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1296 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1159 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
