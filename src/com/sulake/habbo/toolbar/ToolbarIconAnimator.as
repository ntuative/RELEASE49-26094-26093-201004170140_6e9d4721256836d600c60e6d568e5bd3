package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class ToolbarIconAnimator
   {
       
      
      private var var_1295:Boolean;
      
      private var var_886:BitmapData;
      
      private var var_32:String;
      
      private var var_1196:String;
      
      private var var_888:Array;
      
      private var var_50:int;
      
      private var var_887:Array;
      
      private var var_2334:Number;
      
      private var var_2333:Number;
      
      private var var_724:int;
      
      public function ToolbarIconAnimator(param1:StateItem, param2:IAssetLibrary, param3:IBitmapWrapperWindow, param4:Number, param5:Number, param6:BitmapData = null)
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         super();
         if(param1 == null || param2 == null || param3 == null)
         {
            return;
         }
         var_2334 = param4;
         var_2333 = param5;
         var_50 = 0;
         var_724 = 0;
         var_888 = new Array();
         var_887 = new Array();
         var_32 = param1.id;
         var_1196 = param1.nextState;
         var_1295 = param1.loop;
         if(param1.background != null)
         {
            var_886 = getBitmapDataFromAsset(param1.background,param2);
         }
         var _loc9_:XMLList = param1.frames;
         if(_loc9_.length() > 0)
         {
            _loc10_ = 0;
            while(_loc10_ < _loc9_.length())
            {
               _loc11_ = _loc9_[_loc10_];
               _loc7_ = "icon_" + param1.nameBase + "_" + _loc11_.@id;
               _loc11_.@assetName = _loc7_;
               _loc8_ = getBitmapDataFromAsset(_loc7_,param2);
               if(_loc8_ != null)
               {
                  var_888.push(_loc11_);
                  var_887.push(_loc8_);
               }
               _loc10_++;
            }
         }
         else
         {
            _loc7_ = "icon_" + param1.nameBase + "_0";
            _loc8_ = getBitmapDataFromAsset(_loc7_,param2);
            if(_loc8_ != null)
            {
               var_888.push(new XML());
               var_887.push(_loc8_);
            }
         }
         if(param6 != null)
         {
            var_887[var_50] = param6.clone();
         }
         updateAssetInWindow(param3);
      }
      
      public function update(param1:IBitmapWrapperWindow) : void
      {
         if(var_1295 == true || var_724 == 0)
         {
            if(false)
            {
               ++var_50;
               if(var_50 >= var_888.length)
               {
                  var_50 = 0;
                  ++var_724;
               }
            }
            if(var_1295 == true || var_724 == 0)
            {
               updateAssetInWindow(param1);
            }
         }
      }
      
      public function get nextState() : String
      {
         return var_1196;
      }
      
      public function get frameCount() : int
      {
         return var_888.length;
      }
      
      public function hasNextState() : Boolean
      {
         return var_1295 == false && var_724 == 1 && var_1196 != var_32;
      }
      
      private function setAsset(param1:IBitmapWrapperWindow, param2:BitmapData) : void
      {
         var _loc3_:* = null;
         if(var_886 != null)
         {
            _loc3_ = new BitmapData(Math.max(param2.width,var_886.width),Math.max(param2.height,var_886.height));
            _loc3_.copyPixels(var_886,var_886.rect,new Point(0,0));
            _loc3_.copyPixels(param2,param2.rect,new Point((_loc3_.width - param2.width) / 2,(_loc3_.height - param2.height) / 2),null,null,true);
         }
         else
         {
            _loc3_ = param2.clone();
         }
         param1.width = _loc3_.width;
         param1.height = _loc3_.height;
         param1.bitmap = _loc3_;
      }
      
      private function getBitmapDataFromAsset(param1:String, param2:IAssetLibrary) : BitmapData
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param2.hasAsset(param1))
         {
            _loc3_ = param2.getAssetByName(param1) as BitmapDataAsset;
            if(_loc3_ != null)
            {
               return (_loc3_.content as BitmapData).clone();
            }
         }
         return null;
      }
      
      private function updateAssetInWindow(param1:IBitmapWrapperWindow) : void
      {
         var _loc2_:* = null;
         if(var_50 <= var_887.length)
         {
            _loc2_ = var_887[var_50];
            if(_loc2_ != null && param1 != null && _loc2_ is BitmapData)
            {
               setAsset(param1,_loc2_);
            }
         }
      }
   }
}
