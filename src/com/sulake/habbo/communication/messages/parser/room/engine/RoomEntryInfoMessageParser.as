package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1993:int;
      
      private var var_399:Boolean;
      
      private var var_1992:Boolean;
      
      private var var_863:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1992 = param1.readBoolean();
         if(var_1992)
         {
            var_1993 = param1.readInteger();
            var_399 = param1.readBoolean();
         }
         else
         {
            var_863 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_863 != null)
         {
            var_863.dispose();
            var_863 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1993;
      }
      
      public function get owner() : Boolean
      {
         return var_399;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1992;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_863;
      }
   }
}
