package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_133:String = "RWPUW_CONTENT";
      
      public static const const_131:String = "RWPUW_OFFER";
      
      public static const const_65:String = "RWPUW_ERROR";
       
      
      private var var_1051:Array = null;
      
      private var var_1291:String = "";
      
      private var var_1289:String;
      
      private var var_1290:String = "";
      
      private var var_1052:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_1051;
      }
      
      public function get startMessage() : String
      {
         return var_1291;
      }
      
      public function get summary() : String
      {
         return var_1289;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1291 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1052 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1289 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1052;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1290 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1290;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1051 = param1;
      }
   }
}
