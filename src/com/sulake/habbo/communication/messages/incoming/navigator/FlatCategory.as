package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_365:Boolean;
      
      private var var_1240:int;
      
      private var var_1482:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1240 = param1.readInteger();
         var_1482 = param1.readString();
         var_365 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_365;
      }
      
      public function get nodeName() : String
      {
         return var_1482;
      }
      
      public function get nodeId() : int
      {
         return var_1240;
      }
   }
}
