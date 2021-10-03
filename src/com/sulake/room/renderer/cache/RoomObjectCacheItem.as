package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_602:RoomObjectLocationCacheItem = null;
      
      private var var_162:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_602 = new RoomObjectLocationCacheItem(param1);
         var_162 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_602;
      }
      
      public function dispose() : void
      {
         if(var_602 != null)
         {
            var_602.dispose();
            var_602 = null;
         }
         if(var_162 != null)
         {
            var_162.dispose();
            var_162 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_162;
      }
   }
}
