package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1693:int;
      
      private var var_1763:String;
      
      private var var_1762:int;
      
      private var var_1761:int;
      
      private var var_645:Boolean;
      
      private var var_1721:Boolean;
      
      private var var_400:int;
      
      private var var_1252:String;
      
      private var var_1724:int;
      
      private var var_1234:int;
      
      private var _ownerName:String;
      
      private var var_754:String;
      
      private var var_1765:int;
      
      private var var_1764:RoomThumbnailData;
      
      private var var_1760:Boolean;
      
      private var var_637:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_637 = new Array();
         super();
         var_400 = param1.readInteger();
         var_645 = param1.readBoolean();
         var_754 = param1.readString();
         _ownerName = param1.readString();
         var_1724 = param1.readInteger();
         var_1693 = param1.readInteger();
         var_1765 = param1.readInteger();
         var_1252 = param1.readString();
         var_1762 = param1.readInteger();
         var_1760 = param1.readBoolean();
         var_1761 = param1.readInteger();
         var_1234 = param1.readInteger();
         var_1763 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_637.push(_loc4_);
            _loc3_++;
         }
         var_1764 = new RoomThumbnailData(param1);
         var_1721 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1765;
      }
      
      public function get roomName() : String
      {
         return var_754;
      }
      
      public function get userCount() : int
      {
         return var_1693;
      }
      
      public function get score() : int
      {
         return var_1761;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1763;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1760;
      }
      
      public function get tags() : Array
      {
         return var_637;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1721;
      }
      
      public function get event() : Boolean
      {
         return var_645;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_637 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1234;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1762;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1764;
      }
      
      public function get doorMode() : int
      {
         return var_1724;
      }
      
      public function get flatId() : int
      {
         return var_400;
      }
      
      public function get description() : String
      {
         return var_1252;
      }
   }
}
