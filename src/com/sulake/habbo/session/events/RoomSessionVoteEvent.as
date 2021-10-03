package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_129:String = "RSPE_VOTE_RESULT";
      
      public static const const_121:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1329:int = 0;
      
      private var var_982:String = "";
      
      private var var_753:Array;
      
      private var var_1057:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1057 = [];
         var_753 = [];
         super(param1,param2,param7,param8);
         var_982 = param3;
         var_1057 = param4;
         var_753 = param5;
         if(var_753 == null)
         {
            var_753 = [];
         }
         var_1329 = param6;
      }
      
      public function get votes() : Array
      {
         return var_753.slice();
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
   }
}
