package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_417:uint;
      
      private var var_1031:IUnknown;
      
      private var var_1268:String;
      
      private var var_1030:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1030 = param1;
         var_1268 = getQualifiedClassName(var_1030);
         var_1031 = param2;
         var_417 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1030;
      }
      
      public function get disposed() : Boolean
      {
         return var_1031 == null;
      }
      
      public function get references() : uint
      {
         return var_417;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_417) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1031;
      }
      
      public function get iis() : String
      {
         return var_1268;
      }
      
      public function reserve() : uint
      {
         return ++var_417;
      }
      
      public function dispose() : void
      {
         var_1030 = null;
         var_1268 = null;
         var_1031 = null;
         var_417 = 0;
      }
   }
}
