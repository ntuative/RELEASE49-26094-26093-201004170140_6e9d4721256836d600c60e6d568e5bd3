package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1756:int;
      
      private var var_1758:int;
      
      private var var_1757:int;
      
      private var _userName:String;
      
      private var var_1754:int;
      
      private var var_1755:int;
      
      private var var_1759:int;
      
      private var _userId:int;
      
      private var var_696:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1755 = param1.readInteger();
         var_1754 = param1.readInteger();
         var_696 = param1.readBoolean();
         var_1757 = param1.readInteger();
         var_1758 = param1.readInteger();
         var_1756 = param1.readInteger();
         var_1759 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1759;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_696;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1754;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1758;
      }
      
      public function get cautionCount() : int
      {
         return var_1756;
      }
      
      public function get cfhCount() : int
      {
         return var_1757;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1755;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
