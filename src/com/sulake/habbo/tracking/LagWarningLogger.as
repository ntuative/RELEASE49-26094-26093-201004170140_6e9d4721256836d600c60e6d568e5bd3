package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
       
      
      private var var_1239:Boolean = false;
      
      private var var_1502:int;
      
      private var _connection:IConnection;
      
      private var var_1501:int;
      
      public function LagWarningLogger()
      {
         super();
      }
      
      public function warpingDetected() : void
      {
         var _loc2_:* = null;
         if(!var_1239 || var_1502 <= 0)
         {
            return;
         }
         var _loc1_:int = getTimer();
         if(var_1501 == 0 || _loc1_ - var_1501 > var_1502)
         {
            if(_connection != null)
            {
               _loc2_ = new LagWarningReportMessageComposer(1,0);
               _connection.send(_loc2_);
               var_1501 = _loc1_;
            }
         }
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         var_1239 = Boolean(int(param1.getKey("lagWarningLog.enabled","0")));
         var_1502 = int(param1.getKey("lagWarningLog.interval.minutes","10")) * 1000 * 60;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
