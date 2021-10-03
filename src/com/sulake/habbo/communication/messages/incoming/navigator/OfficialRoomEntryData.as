package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1155:int = 4;
      
      public static const const_720:int = 3;
      
      public static const const_641:int = 2;
      
      public static const const_852:int = 1;
       
      
      private var var_2156:String;
      
      private var _disposed:Boolean;
      
      private var var_1693:int;
      
      private var var_2159:Boolean;
      
      private var var_880:String;
      
      private var var_901:PublicRoomData;
      
      private var var_2158:int;
      
      private var _index:int;
      
      private var var_2157:String;
      
      private var _type:int;
      
      private var var_1683:String;
      
      private var var_902:GuestRoomData;
      
      private var var_2155:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2156 = param1.readString();
         var_2155 = param1.readString();
         var_2159 = param1.readInteger() == 1;
         var_2157 = param1.readString();
         var_880 = param1.readString();
         var_2158 = param1.readInteger();
         var_1693 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_852)
         {
            var_1683 = param1.readString();
         }
         else if(_type == const_720)
         {
            var_901 = new PublicRoomData(param1);
         }
         else if(_type == const_641)
         {
            var_902 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2158;
      }
      
      public function get popupCaption() : String
      {
         return var_2156;
      }
      
      public function get userCount() : int
      {
         return var_1693;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2159;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_852)
         {
            return 0;
         }
         if(this.type == const_641)
         {
            return this.var_902.maxUserCount;
         }
         if(this.type == const_720)
         {
            return this.var_901.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2155;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_902 != null)
         {
            this.var_902.dispose();
            this.var_902 = null;
         }
         if(this.var_901 != null)
         {
            this.var_901.dispose();
            this.var_901 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_902;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2157;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_901;
      }
      
      public function get picRef() : String
      {
         return var_880;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1683;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
