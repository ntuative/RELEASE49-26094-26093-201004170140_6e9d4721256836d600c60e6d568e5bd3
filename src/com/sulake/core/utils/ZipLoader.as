package com.sulake.core.utils
{
   import com.sulake.core.Core;
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_443:FZip;
      
      private var var_1356:Array;
      
      private var var_1090:uint = 0;
      
      private var var_2232:uint = 0;
      
      private var var_2395:Array;
      
      private var var_925:int = 0;
      
      private var var_1089:uint = 0;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1356 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0,var_1089,var_1090));
      }
      
      public function get resources() : Array
      {
         return var_1356;
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_925 = 0;
         var_2232 = var_443.getFileCount();
         removeEventListeners();
         try
         {
            if(var_14)
            {
               var_14.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_14.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_14.loadBytes(var_443.getFileAt(var_925).content);
            }
         }
         catch(e:Error)
         {
            Core.crash("Crashed on ZipLoader.onComplete",Core.const_507,e);
         }
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var loaderInfo:LoaderInfo = null;
         var name:String = null;
         var event:Event = param1;
         try
         {
            loaderInfo = event.target as LoaderInfo;
            name = getQualifiedClassName(var_14.content);
            var_1356.push(var_14.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_925;
            if(var_1356.length == var_2232)
            {
               var_14.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_14.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,var_1089,var_1090));
            }
            else
            {
               var_14.loadBytes(var_443.getFileAt(var_925).content);
            }
         }
         catch(e:Error)
         {
            Core.crash("Crashed on ZipLoader.onLoaderComplete",Core.const_507,e);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_287 = param1;
         _name = parseNameFromUrl(var_287.url);
         if(var_443)
         {
            var_443.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_443 = new FZip();
         var_443.addEventListener(Event.COMPLETE,onComplete);
         var_443.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_443.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_443.load(var_287);
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_1090;
      }
      
      override public function get bytesTotal() : uint
      {
         return var_1089;
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         var_1089 = param1.bytesTotal;
         var_1090 = param1.bytesLoaded;
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,var_1089,var_1090));
      }
   }
}
