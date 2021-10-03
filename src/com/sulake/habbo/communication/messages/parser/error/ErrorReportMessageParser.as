package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1125:int;
      
      private var var_1126:int;
      
      private var var_1127:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1125;
      }
      
      public function flush() : Boolean
      {
         var_1126 = 0;
         var_1125 = 0;
         var_1127 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1126;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1125 = param1.readInteger();
         var_1126 = param1.readInteger();
         var_1127 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1127;
      }
   }
}
