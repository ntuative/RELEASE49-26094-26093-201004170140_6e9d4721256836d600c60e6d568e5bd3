package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2066:int;
      
      private var var_2068:int;
      
      private var var_2204:Boolean;
      
      private var var_2205:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2203:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2068 = param1;
         var_2066 = param2;
         var_2205 = param3;
         var_2203 = param4;
         var_2204 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2068,var_2066,var_2205,var_2203,int(var_2204)];
      }
      
      public function dispose() : void
      {
      }
   }
}
