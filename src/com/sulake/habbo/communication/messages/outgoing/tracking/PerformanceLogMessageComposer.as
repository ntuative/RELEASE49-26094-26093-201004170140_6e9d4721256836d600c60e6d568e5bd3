package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1060:int = 0;
      
      private var var_1272:int = 0;
      
      private var var_1995:String = "";
      
      private var var_1061:int = 0;
      
      private var var_1996:String = "";
      
      private var var_1997:int = 0;
      
      private var var_1555:String = "";
      
      private var var_1999:int = 0;
      
      private var var_1998:int = 0;
      
      private var var_2001:String = "";
      
      private var var_2000:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1999 = param1;
         var_2001 = param2;
         var_1555 = param3;
         var_1995 = param4;
         var_1996 = param5;
         if(param6)
         {
            var_1272 = 1;
         }
         else
         {
            var_1272 = 0;
         }
         var_1997 = param7;
         var_1998 = param8;
         var_1061 = param9;
         var_2000 = param10;
         var_1060 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1999,var_2001,var_1555,var_1995,var_1996,var_1272,var_1997,var_1998,var_1061,var_2000,var_1060];
      }
      
      public function dispose() : void
      {
      }
   }
}
