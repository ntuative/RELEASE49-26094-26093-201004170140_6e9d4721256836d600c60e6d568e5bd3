package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1073:int = 0;
      
      private var _data:String = "";
      
      private var var_1552:int = -1;
      
      private var var_32:int = 0;
      
      private var _type:int = 0;
      
      private var var_1074:int = 0;
      
      private var var_2375:String = "";
      
      private var var_1735:int = 0;
      
      private var _id:int = 0;
      
      private var var_194:Boolean = false;
      
      private var var_227:int = 0;
      
      private var var_1736:String = null;
      
      private var var_82:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_81:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_194)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_194)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_227;
      }
      
      public function get extra() : int
      {
         return var_1552;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_194)
         {
            var_227 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_194)
         {
            var_82 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_194)
         {
            var_1552 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_194)
         {
            var_32 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1735;
      }
      
      public function get staticClass() : String
      {
         return var_1736;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_194)
         {
            var_1735 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_194)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_194)
         {
            var_1736 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_194 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_194)
         {
            var_1073 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_194)
         {
            var_1074 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_194)
         {
            var_81 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1073;
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get sizeY() : int
      {
         return var_1074;
      }
   }
}
