package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1329:int;
      
      private var var_982:String;
      
      private var var_753:Array;
      
      private var var_1057:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_753.slice();
      }
      
      public function flush() : Boolean
      {
         var_982 = "";
         var_1057 = [];
         var_753 = [];
         var_1329 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1329;
      }
      
      public function get question() : String
      {
         return var_982;
      }
      
      public function get choices() : Array
      {
         return var_1057.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_982 = param1.readString();
         var_1057 = [];
         var_753 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1057.push(param1.readString());
            var_753.push(param1.readInteger());
            _loc3_++;
         }
         var_1329 = param1.readInteger();
         return true;
      }
   }
}
