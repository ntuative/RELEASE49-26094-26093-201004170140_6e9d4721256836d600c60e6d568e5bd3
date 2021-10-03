package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PublicSpaceCastLibsMessageParser implements IMessageParser
   {
       
      
      private var var_1785:int;
      
      private var var_2055:String;
      
      private var var_1240:int;
      
      public function PublicSpaceCastLibsMessageParser()
      {
         super();
      }
      
      public function get unitPort() : int
      {
         return var_1785;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get castLibs() : String
      {
         return var_2055;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1240 = param1.readInteger();
         this.var_2055 = param1.readString();
         this.var_1785 = param1.readInteger();
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1240;
      }
   }
}
