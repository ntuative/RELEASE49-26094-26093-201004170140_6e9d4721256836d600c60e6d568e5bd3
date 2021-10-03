package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_263:uint = 1;
      
      public static const const_376:uint = 0;
      
      public static const const_915:uint = 8;
      
      public static const const_247:uint = 4;
      
      public static const const_432:uint = 2;
       
      
      private var var_445:uint;
      
      private var var_2153:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_2154:uint;
      
      private var var_95:Rectangle;
      
      private var var_637:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_95 = param3;
         _color = param4;
         var_445 = param5;
         var_2153 = param6;
         var_2154 = param7;
         var_637 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_2153;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_445;
      }
      
      public function get scaleV() : uint
      {
         return var_2154;
      }
      
      public function get tags() : Array
      {
         return var_637;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_95 = null;
         var_637 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_95;
      }
   }
}
