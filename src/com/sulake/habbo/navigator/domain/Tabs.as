package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_642:int = 6;
      
      public static const const_222:int = 5;
      
      public static const const_562:int = 2;
      
      public static const const_334:int = 9;
      
      public static const const_283:int = 4;
      
      public static const const_244:int = 2;
      
      public static const const_691:int = 4;
      
      public static const const_213:int = 8;
      
      public static const const_503:int = 7;
      
      public static const const_260:int = 3;
      
      public static const const_322:int = 1;
      
      public static const const_232:int = 5;
      
      public static const const_390:int = 12;
      
      public static const const_296:int = 1;
      
      public static const const_621:int = 11;
      
      public static const const_689:int = 3;
      
      public static const const_1491:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_444:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_444 = new Array();
         var_444.push(new Tab(_navigator,const_322,const_390,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_394));
         var_444.push(new Tab(_navigator,const_244,const_296,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_394));
         var_444.push(new Tab(_navigator,const_283,const_621,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_923));
         var_444.push(new Tab(_navigator,const_260,const_222,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_394));
         var_444.push(new Tab(_navigator,const_232,const_213,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_652));
         setSelectedTab(const_322);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_444)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_444)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_444)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_283;
      }
      
      public function get tabs() : Array
      {
         return var_444;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
