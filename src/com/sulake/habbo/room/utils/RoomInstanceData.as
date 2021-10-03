package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_812:LegacyWallGeometry = null;
      
      private var var_569:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_571:TileHeightMap = null;
      
      private var var_1795:String = null;
      
      private var _roomId:int = 0;
      
      private var var_570:SelectedRoomObjectData = null;
      
      private var var_813:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_812 = new LegacyWallGeometry();
         var_813 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_569 != null)
         {
            var_569.dispose();
         }
         var_569 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_571 != null)
         {
            var_571.dispose();
         }
         var_571 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1795 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_812;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_570;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_813;
      }
      
      public function dispose() : void
      {
         if(var_571 != null)
         {
            var_571.dispose();
            var_571 = null;
         }
         if(var_812 != null)
         {
            var_812.dispose();
            var_812 = null;
         }
         if(var_813 != null)
         {
            var_813.dispose();
            var_813 = null;
         }
         if(var_569 != null)
         {
            var_569.dispose();
            var_569 = null;
         }
         if(var_570 != null)
         {
            var_570.dispose();
            var_570 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_571;
      }
      
      public function get worldType() : String
      {
         return var_1795;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_570 != null)
         {
            var_570.dispose();
         }
         var_570 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_569;
      }
   }
}
