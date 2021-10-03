package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1434:int = 10;
       
      
      private var var_1556:NavigatorSettingsMessageParser;
      
      private var var_1302:int;
      
      private var var_2125:int;
      
      private var var_2127:Boolean;
      
      private var var_1063:Array;
      
      private var var_893:Dictionary;
      
      private var var_1062:Array;
      
      private var var_2338:int;
      
      private var var_2126:int;
      
      private var var_2060:int;
      
      private var var_2129:int;
      
      private var var_612:PublicRoomShortData;
      
      private var var_430:RoomEventData;
      
      private var var_129:MsgWithRequestId;
      
      private var var_2128:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2130:Boolean;
      
      private var var_198:GuestRoomData;
      
      private var var_729:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1063 = new Array();
         var_1062 = new Array();
         var_893 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2125;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2130;
      }
      
      public function startLoading() : void
      {
         this.var_729 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2130 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_430 != null)
         {
            var_430.dispose();
         }
         var_430 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_129 != null && var_129 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_129 != null && var_129 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_129 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_198;
      }
      
      public function get allCategories() : Array
      {
         return var_1063;
      }
      
      public function onRoomExit() : void
      {
         if(var_430 != null)
         {
            var_430.dispose();
            var_430 = null;
         }
         if(var_612 != null)
         {
            var_612.dispose();
            var_612 = null;
         }
         if(var_198 != null)
         {
            var_198.dispose();
            var_198 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_729 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1556;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_729 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_612 = null;
         var_198 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_612 = param1.publicSpace;
            var_430 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2338 = param1.limit;
         this.var_1302 = param1.favouriteRoomIds.length;
         this.var_893 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_893[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_129 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_612;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2127;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_729 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_2060 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_198 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_729;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1062;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1063 = param1;
         var_1062 = new Array();
         for each(_loc2_ in var_1063)
         {
            if(_loc2_.visible)
            {
               var_1062.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2126;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2129;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1556 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_129 == null)
         {
            return;
         }
         var_129.dispose();
         var_129 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_430;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_893[param1] = !!param2 ? "yes" : null;
         var_1302 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_129 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_2060;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_129 != null && var_129 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2127 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2126 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2128 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_198 != null)
         {
            var_198.dispose();
         }
         var_198 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_198 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1556.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1302 >= var_2338;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2129 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2128;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_198 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2125 = param1;
      }
   }
}
