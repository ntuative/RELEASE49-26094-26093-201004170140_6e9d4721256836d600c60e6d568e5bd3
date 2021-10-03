package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_742:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_742 = new ByteArray();
         var_742.writeShort(param1);
         var_742.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_742.position = 0;
         if(false)
         {
            _loc1_ = var_742.readShort();
            var_742.position = 0;
         }
         return _loc1_;
      }
   }
}
