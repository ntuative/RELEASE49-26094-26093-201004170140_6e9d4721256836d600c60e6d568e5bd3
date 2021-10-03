package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_612:int = 2;
      
      public static const const_926:int = 6;
      
      public static const const_716:int = 1;
      
      public static const const_679:int = 3;
      
      public static const const_1008:int = 4;
      
      public static const const_697:int = 5;
       
      
      private var var_2160:String;
      
      private var var_1065:int;
      
      private var var_1974:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1065 = param2;
         var_1974 = param3;
         var_2160 = param4;
      }
      
      public function get time() : String
      {
         return var_2160;
      }
      
      public function get senderId() : int
      {
         return var_1065;
      }
      
      public function get messageText() : String
      {
         return var_1974;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
