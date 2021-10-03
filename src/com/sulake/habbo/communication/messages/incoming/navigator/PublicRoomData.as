package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1785:int;
      
      private var var_2055:String;
      
      private var var_1783:int;
      
      private var _disposed:Boolean;
      
      private var var_2054:int;
      
      private var var_2056:String;
      
      private var var_1240:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2056 = param1.readString();
         var_1785 = param1.readInteger();
         var_1783 = param1.readInteger();
         var_2055 = param1.readString();
         var_2054 = param1.readInteger();
         var_1240 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2054;
      }
      
      public function get worldId() : int
      {
         return var_1783;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_2056;
      }
      
      public function get unitPort() : int
      {
         return var_1785;
      }
      
      public function get castLibs() : String
      {
         return var_2055;
      }
      
      public function get nodeId() : int
      {
         return var_1240;
      }
   }
}
