package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_194:String = "RWUIUE_PEER";
      
      public static const const_223:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1181:String = "BOT";
      
      public static const const_1023:int = 2;
      
      public static const const_1247:int = 0;
      
      public static const const_854:int = 3;
       
      
      private var var_295:String = "";
      
      private var var_1238:String = "";
      
      private var var_1649:Boolean = false;
      
      private var var_1638:int = 0;
      
      private var var_1646:int = 0;
      
      private var var_1640:Boolean = false;
      
      private var var_1237:String = "";
      
      private var var_1647:Boolean = false;
      
      private var var_780:int = 0;
      
      private var var_1644:Boolean = true;
      
      private var var_1022:int = 0;
      
      private var var_1639:Boolean = false;
      
      private var var_1180:Boolean = false;
      
      private var var_1641:Boolean = false;
      
      private var var_1643:int = 0;
      
      private var var_1645:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_256:Array;
      
      private var var_1178:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1642:int = 0;
      
      private var var_1650:Boolean = false;
      
      private var var_1648:int = 0;
      
      private var var_1637:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_256 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1646;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1646 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1649;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1644;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1644 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1647 = param1;
      }
      
      public function get motto() : String
      {
         return var_1238;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1639 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1180;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1238 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1650;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1637;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1180 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1645;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1643 = param1;
      }
      
      public function get badges() : Array
      {
         return var_256;
      }
      
      public function get amIController() : Boolean
      {
         return var_1640;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1640 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1650 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1648 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1637 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1237 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1647;
      }
      
      public function set figure(param1:String) : void
      {
         var_295 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1643;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1178;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1639;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_780 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1648;
      }
      
      public function get realName() : String
      {
         return var_1237;
      }
      
      public function get figure() : String
      {
         return var_295;
      }
      
      public function set webID(param1:int) : void
      {
         var_1642 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_256 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1641 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1645 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_780;
      }
      
      public function get webID() : int
      {
         return var_1642;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1022 = param1;
      }
      
      public function get xp() : int
      {
         return var_1638;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1649 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1022;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1641;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1178 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1638 = param1;
      }
   }
}
