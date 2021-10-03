package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_143:int = 1;
      
      public static const const_1177:int = 3;
      
      public static const const_435:int = 2;
       
      
      private var var_1781:int;
      
      private var var_1785:int;
      
      private var var_1791:int;
      
      private var var_1783:int;
      
      private var var_32:int;
      
      private var var_400:int;
      
      private var var_1294:int;
      
      private var var_1787:int;
      
      private var var_968:int;
      
      private var _roomResources:String;
      
      private var var_1780:int;
      
      private var var_1789:int;
      
      private var var_1779:String;
      
      private var var_1784:String;
      
      private var var_1786:int = 0;
      
      private var var_1148:String;
      
      private var _message:String;
      
      private var var_1782:int;
      
      private var var_1790:String;
      
      private var var_1234:int;
      
      private var var_754:String;
      
      private var var_1788:String;
      
      private var var_1435:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_968 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1786 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1789;
      }
      
      public function set roomName(param1:String) : void
      {
         var_754 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1780 = param1;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_754;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1783 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_32 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1785;
      }
      
      public function get priority() : int
      {
         return var_1781 + var_1786;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1787 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1784;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1435) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1234;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1789 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1294;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1779 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1780;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1783;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1788 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1148 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1787;
      }
      
      public function set priority(param1:int) : void
      {
         var_1781 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1785 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1779;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1791 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1784 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1782 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1148;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1294 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1791;
      }
      
      public function set flatId(param1:int) : void
      {
         var_400 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1234 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1435 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1782;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1790 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1435;
      }
      
      public function get reportedUserId() : int
      {
         return var_968;
      }
      
      public function get flatId() : int
      {
         return var_400;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1788;
      }
      
      public function get reporterUserName() : String
      {
         return var_1790;
      }
   }
}
