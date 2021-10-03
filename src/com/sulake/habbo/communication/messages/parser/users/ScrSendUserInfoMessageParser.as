package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1187:int = 2;
      
      public static const const_1589:int = 1;
       
      
      private var var_1865:int;
      
      private var var_1864:int;
      
      private var var_1861:Boolean;
      
      private var var_1863:int;
      
      private var var_1228:String;
      
      private var var_1862:Boolean;
      
      private var var_1866:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1864;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1861;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1866;
      }
      
      public function get memberPeriods() : int
      {
         return var_1863;
      }
      
      public function get productName() : String
      {
         return var_1228;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1862;
      }
      
      public function get responseType() : int
      {
         return var_1865;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1228 = param1.readString();
         var_1864 = param1.readInteger();
         var_1863 = param1.readInteger();
         var_1866 = param1.readInteger();
         var_1865 = param1.readInteger();
         var_1862 = param1.readBoolean();
         var_1861 = param1.readBoolean();
         return true;
      }
   }
}
