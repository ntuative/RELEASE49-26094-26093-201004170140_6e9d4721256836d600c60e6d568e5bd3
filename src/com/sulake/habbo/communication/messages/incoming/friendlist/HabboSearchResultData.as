package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2327:Boolean;
      
      private var var_2328:int;
      
      private var var_2330:Boolean;
      
      private var var_1511:String;
      
      private var var_1237:String;
      
      private var var_2060:int;
      
      private var var_1954:String;
      
      private var var_2329:String;
      
      private var var_1955:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2060 = param1.readInteger();
         this.var_1511 = param1.readString();
         this.var_1954 = param1.readString();
         this.var_2327 = param1.readBoolean();
         this.var_2330 = param1.readBoolean();
         param1.readString();
         this.var_2328 = param1.readInteger();
         this.var_1955 = param1.readString();
         this.var_2329 = param1.readString();
         this.var_1237 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1237;
      }
      
      public function get avatarName() : String
      {
         return this.var_1511;
      }
      
      public function get avatarId() : int
      {
         return this.var_2060;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2327;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2329;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1955;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2330;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1954;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2328;
      }
   }
}
