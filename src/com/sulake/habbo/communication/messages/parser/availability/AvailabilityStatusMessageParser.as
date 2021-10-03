package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1009:Boolean;
      
      private var var_1150:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1009 = param1.readInteger() > 0;
         var_1150 = param1.readInteger() > 0;
         return true;
      }
      
      public function get method_2() : Boolean
      {
         return var_1009;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1150;
      }
      
      public function flush() : Boolean
      {
         var_1009 = false;
         var_1150 = false;
         return true;
      }
   }
}
