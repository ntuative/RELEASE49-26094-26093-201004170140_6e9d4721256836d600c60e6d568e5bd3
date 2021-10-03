package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1240:int;
      
      private var var_1482:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1240 = param1;
         var_1482 = param2;
         Logger.log("READ NODE: " + var_1240 + ", " + var_1482);
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
