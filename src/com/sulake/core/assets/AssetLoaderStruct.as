package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_708:IAssetLoader;
      
      private var var_1288:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1288 = param1;
         var_708 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_708;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_708 != null)
            {
               if(true)
               {
                  var_708.dispose();
                  var_708 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1288;
      }
   }
}
