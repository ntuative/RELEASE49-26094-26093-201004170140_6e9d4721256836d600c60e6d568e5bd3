package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1033:Boolean;
      
      private var var_1035:Boolean;
      
      private var var_1034:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1033;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1035;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1034 = param1.readBoolean();
         var_1035 = param1.readBoolean();
         var_1033 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1034;
      }
      
      public function flush() : Boolean
      {
         var_1034 = false;
         var_1035 = false;
         var_1033 = false;
         return true;
      }
   }
}
