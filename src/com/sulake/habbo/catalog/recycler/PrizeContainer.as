package com.sulake.habbo.catalog.recycler
{
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   
   public class PrizeContainer extends PrizeGridItem
   {
       
      
      private var var_1770:String;
      
      private var var_2355:PrizeGridItem;
      
      private var var_1771:int;
      
      private var _furnitureData:IFurnitureData;
      
      private var var_1446:int;
      
      public function PrizeContainer(param1:String, param2:int, param3:IFurnitureData, param4:int)
      {
         super();
         var_1770 = param1;
         var_1446 = param2;
         _furnitureData = param3;
         var_1771 = param4;
      }
      
      public function get oddsLevelId() : int
      {
         return var_1771;
      }
      
      public function get productItemType() : String
      {
         return var_1770;
      }
      
      public function get title() : String
      {
         if(_furnitureData == null)
         {
            return "";
         }
         return _furnitureData.title;
      }
      
      public function get gridItem() : PrizeGridItem
      {
         return var_2355;
      }
      
      public function setIcon(param1:IRoomEngine) : void
      {
         initProductIcon(param1,_furnitureData.type,var_1446);
      }
      
      public function get productItemTypeId() : int
      {
         return var_1446;
      }
   }
}
