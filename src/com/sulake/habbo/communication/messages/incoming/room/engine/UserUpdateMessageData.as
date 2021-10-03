package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_81:Number = 0;
      
      private var var_227:int = 0;
      
      private var var_1718:int = 0;
      
      private var var_2151:Number = 0;
      
      private var var_2152:Number = 0;
      
      private var var_2148:Number = 0;
      
      private var var_2149:Number = 0;
      
      private var var_2150:Boolean = false;
      
      private var var_82:Number = 0;
      
      private var _id:int = 0;
      
      private var var_191:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_191 = [];
         super();
         _id = param1;
         var_82 = param2;
         _y = param3;
         var_81 = param4;
         var_2149 = param5;
         var_227 = param6;
         var_1718 = param7;
         var_2151 = param8;
         var_2152 = param9;
         var_2148 = param10;
         var_2150 = param11;
         var_191 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function get dir() : int
      {
         return var_227;
      }
      
      public function get localZ() : Number
      {
         return var_2149;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2150;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1718;
      }
      
      public function get targetX() : Number
      {
         return var_2151;
      }
      
      public function get targetY() : Number
      {
         return var_2152;
      }
      
      public function get targetZ() : Number
      {
         return var_2148;
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get actions() : Array
      {
         return var_191.slice();
      }
   }
}
