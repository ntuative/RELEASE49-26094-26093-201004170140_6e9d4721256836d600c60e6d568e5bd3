package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1619:int = 2;
      
      public static const const_1395:int = 4;
      
      public static const const_1391:int = 1;
      
      public static const const_1332:int = 3;
       
      
      private var var_1093:int = 0;
      
      private var var_931:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1093;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1093 = param1.readInteger();
         if(var_1093 == 3)
         {
            var_931 = param1.readString();
         }
         else
         {
            var_931 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1093 = 0;
         var_931 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_931;
      }
   }
}
