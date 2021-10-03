package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_375:int = 0;
      
      public static const const_110:int = 2;
      
      public static const const_180:int = 1;
      
      public static const const_506:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1722:Boolean;
      
      private var var_1723:Boolean;
      
      private var var_1720:int;
      
      private var var_1727:Array;
      
      private var var_1725:int;
      
      private var var_1721:Boolean;
      
      private var var_1252:String;
      
      private var var_1726:int;
      
      private var var_1724:int;
      
      private var var_1234:int;
      
      private var _roomId:int;
      
      private var var_637:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1726;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1726 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_637;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1721;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1725 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1727 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_637 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1722;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1723;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1720;
      }
      
      public function get categoryId() : int
      {
         return var_1234;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1721 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1725;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1727;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1724 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1722 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1723 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1720 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1724;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1234 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1252 = param1;
      }
      
      public function get description() : String
      {
         return var_1252;
      }
   }
}
