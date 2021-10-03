package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_147:Array;
      
      private var var_32:Boolean = false;
      
      private var var_1431:int = 0;
      
      private var var_1433:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_470:Map;
      
      private var var_1728:int = 0;
      
      private var var_1432:int = 0;
      
      private var var_148:IHabboConfigurationManager;
      
      private var var_1157:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1434:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_32)
         {
            return;
         }
         if(getTimer() - var_1431 > var_1433)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1431 = getTimer();
         var_470.add(var_1157,var_1431);
         _connection.send(new LatencyPingRequestMessageComposer(var_1157));
         ++var_1157;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_148 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1433 = int(var_148.getKey("latencytest.interval"));
         var_1434 = int(var_148.getKey("latencytest.report.index"));
         var_1728 = int(var_148.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1433 < 1)
         {
            return;
         }
         var_470 = new Map();
         var_147 = new Array();
         var_32 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_470 == null || var_147 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_470.getValue(_loc2_.requestId);
         var_470.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_147.push(_loc4_);
         if(var_147.length == var_1434 && var_1434 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_147.length)
            {
               _loc5_ += var_147[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_147.length)
            {
               if(var_147[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_147[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_147 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1432) > var_1728 || var_1432 == 0)
            {
               var_1432 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_147.length);
               _connection.send(_loc11_);
            }
            var_147 = [];
         }
      }
      
      public function dispose() : void
      {
         var_32 = false;
         var_148 = null;
         _communication = null;
         _connection = null;
         if(var_470 != null)
         {
            var_470.dispose();
            var_470 = null;
         }
         var_147 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_148 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
