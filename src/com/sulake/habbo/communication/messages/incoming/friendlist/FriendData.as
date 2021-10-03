package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_295:String;
      
      private var var_1235:String;
      
      private var var_1238:String;
      
      private var var_1234:int;
      
      private var var_587:int;
      
      private var var_1237:String;
      
      private var _name:String;
      
      private var var_1236:Boolean;
      
      private var var_696:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_587 = param1.readInteger();
         this.var_696 = param1.readBoolean();
         this.var_1236 = param1.readBoolean();
         this.var_295 = param1.readString();
         this.var_1234 = param1.readInteger();
         this.var_1238 = param1.readString();
         this.var_1235 = param1.readString();
         this.var_1237 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_587;
      }
      
      public function get realName() : String
      {
         return var_1237;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1238;
      }
      
      public function get categoryId() : int
      {
         return var_1234;
      }
      
      public function get online() : Boolean
      {
         return var_696;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1236;
      }
      
      public function get lastAccess() : String
      {
         return var_1235;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_295;
      }
   }
}
