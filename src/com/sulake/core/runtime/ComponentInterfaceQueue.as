package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1342:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_920:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1342 = param1;
         var_920 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_920;
      }
      
      public function get identifier() : IID
      {
         return var_1342;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1342 = null;
            while(false)
            {
               var_920.pop();
            }
            var_920 = null;
         }
      }
   }
}
