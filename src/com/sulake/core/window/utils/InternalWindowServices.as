package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_117:DisplayObject;
      
      private var var_2324:uint;
      
      private var var_848:IWindowToolTipAgentService;
      
      private var var_852:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_851:IWindowFocusManagerService;
      
      private var var_849:IWindowMouseListenerService;
      
      private var var_850:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2324 = 0;
         var_117 = param2;
         _windowContext = param1;
         var_850 = new WindowMouseDragger(param2);
         var_852 = new WindowMouseScaler(param2);
         var_849 = new WindowMouseListener(param2);
         var_851 = new FocusManager(param2);
         var_848 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_852;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_851;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_848;
      }
      
      public function dispose() : void
      {
         if(var_850 != null)
         {
            var_850.dispose();
            var_850 = null;
         }
         if(var_852 != null)
         {
            var_852.dispose();
            var_852 = null;
         }
         if(var_849 != null)
         {
            var_849.dispose();
            var_849 = null;
         }
         if(var_851 != null)
         {
            var_851.dispose();
            var_851 = null;
         }
         if(var_848 != null)
         {
            var_848.dispose();
            var_848 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_849;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_850;
      }
   }
}
