package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_1924:int;
      
      private var var_1233:int;
      
      private var var_701:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1233 = param1.readInteger();
         var_1924 = param1.readInteger();
         var_701 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_701.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_1924;
      }
      
      public function get prizes() : Array
      {
         return var_701;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1233;
      }
   }
}
