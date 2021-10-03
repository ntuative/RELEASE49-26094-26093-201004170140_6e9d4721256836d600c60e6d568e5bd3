package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_907:String = "AssetLoaderEventUnload";
      
      public static const const_46:String = "AssetLoaderEventError";
      
      public static const const_953:String = "AssetLoaderEventOpen";
      
      public static const const_1015:String = "AssetLoaderEventProgress";
      
      public static const const_862:String = "AssetLoaderEventStatus";
      
      public static const const_35:String = "AssetLoaderEventComplete";
       
      
      private var var_377:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_377 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_377;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_377);
      }
   }
}
