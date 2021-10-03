package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1096:int = 100;
      
      private static const const_1095:int = 200;
      
      private static const const_1093:int = 180;
      
      public static const const_807:int = 1;
      
      public static const const_431:int = 2;
      
      private static const const_1094:int = 250;
      
      private static const const_774:int = 5;
       
      
      private var var_593:BitmapData;
      
      private var var_300:Timer;
      
      private var var_8:IWindowContainer;
      
      private var var_697:BitmapData;
      
      private var var_301:Timer;
      
      private var var_68:IWindowContainer;
      
      private var var_1513:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_301 = new Timer(const_1094,1);
         var_300 = new Timer(const_1096,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_68 = param1;
         var_68.visible = false;
         _assets = param2;
         var_301.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_300.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_697 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_593 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_68.visible = false;
         var_300.reset();
         var_301.reset();
         if(var_8 != null)
         {
            var_8.removeChild(var_68);
         }
      }
      
      public function hideDelayed() : void
      {
         var_300.reset();
         var_301.reset();
         var_300.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_301 != null)
         {
            var_301.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_301.stop();
            var_301 = null;
         }
         if(var_300 != null)
         {
            var_300.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_300.stop();
            var_300 = null;
         }
         _assets = null;
         var_68 = null;
         var_8 = null;
         var_593 = null;
         var_697 = null;
      }
      
      public function showDelayed() : void
      {
         var_300.reset();
         var_301.reset();
         var_301.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_68 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_8 != null)
         {
            var_8.removeChild(var_68);
         }
         var_8 = param1;
         var_1513 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_68.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_68.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1093,param3.width),Math.min(const_1095,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_68.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_68 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_68.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_807:
               _loc2_.bitmap = var_697.clone();
               _loc2_.width = var_697.width;
               _loc2_.height = var_697.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_431:
               _loc2_.bitmap = var_593.clone();
               _loc2_.width = var_593.width;
               _loc2_.height = var_593.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_300.reset();
         var_301.reset();
         if(var_8 == null)
         {
            return;
         }
         var_68.visible = true;
         var_8.addChild(var_68);
         refreshArrow(var_1513);
         switch(var_1513)
         {
            case const_807:
               var_68.x = 0 - const_774;
               break;
            case const_431:
               var_68.x = var_8.width + const_774;
         }
         var_68.y = (0 - 0) / 2;
      }
   }
}
