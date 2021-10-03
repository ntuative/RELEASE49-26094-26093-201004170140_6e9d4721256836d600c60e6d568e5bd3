package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2004:int;
      
      private var var_2003:String;
      
      private var var_1533:IActionDefinition;
      
      private var var_2006:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2005:String;
      
      private var var_2007:String;
      
      private var var_1892:Boolean;
      
      private var var_2008:ColorTransform;
      
      private var var_2002:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2003 = param1;
         var_2005 = param2;
         var_2004 = param3;
         _color = param4;
         _frames = param5;
         var_1533 = param6;
         var_1892 = param7;
         var_2002 = param8;
         var_2007 = param9;
         var_2006 = param10;
         var_2008 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1892;
      }
      
      public function get partType() : String
      {
         return var_2005;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_2002;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2006;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2004;
      }
      
      public function get flippedPartType() : String
      {
         return var_2007;
      }
      
      public function get bodyPartId() : String
      {
         return var_2003;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1533;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2008;
      }
   }
}
