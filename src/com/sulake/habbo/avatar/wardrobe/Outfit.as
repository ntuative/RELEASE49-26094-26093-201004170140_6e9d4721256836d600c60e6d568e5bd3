package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit
   {
       
      
      private var var_587:String;
      
      private var var_295:String;
      
      private var _view:OutfitView;
      
      private var var_47:HabboAvatarEditor;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         var_47 = param1;
         _view = new OutfitView(param1.windowManager,param1.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_83:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.const_92:
            case "f":
            case "F":
               param3 = "null";
         }
         var_295 = param2;
         var_587 = param3;
         update();
      }
      
      public function get gender() : String
      {
         return var_587;
      }
      
      public function get view() : OutfitView
      {
         return _view;
      }
      
      public function update() : void
      {
         var _loc2_:* = null;
         var _loc1_:IAvatarImage = var_47.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.SMALL,var_587);
         if(_loc1_)
         {
            _loc1_.setDirection(AvatarSetType.const_39,int(FigureData.const_694));
            _loc2_ = _loc1_.getImage(AvatarSetType.const_39,true);
            if(_view)
            {
               _view.udpate(_loc2_);
            }
            _loc1_.dispose();
         }
      }
      
      public function get figure() : String
      {
         return var_295;
      }
      
      public function dispose() : void
      {
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
         var_295 = null;
         var_587 = null;
      }
   }
}
