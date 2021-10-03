package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1118:int = 80;
       
      
      private var var_523:Map;
      
      private var var_754:String = "";
      
      private var var_1331:Array;
      
      public function UserRegistry()
      {
         var_523 = new Map();
         var_1331 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_523.getValue(var_1331.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_754;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_523.getValue(param1) != null)
         {
            var_523.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_754);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_754 == "")
         {
            var_1331.push(param1);
         }
         var_523.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_523;
      }
      
      public function unregisterRoom() : void
      {
         var_754 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_523.length > const_1118)
         {
            _loc1_ = var_523.getKey(0);
            var_523.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_754 = param1;
         if(var_754 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
