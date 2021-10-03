package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1468:int;
      
      private var var_1467:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1468;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1468 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1468 = this.var_1468;
         _loc1_.var_1467 = this.var_1467;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1467 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1467;
      }
   }
}
