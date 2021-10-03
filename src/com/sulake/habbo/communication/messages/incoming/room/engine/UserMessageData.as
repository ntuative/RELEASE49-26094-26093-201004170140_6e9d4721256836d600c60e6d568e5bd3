package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1329:String = "F";
      
      public static const const_990:String = "M";
       
      
      private var var_82:Number = 0;
      
      private var var_295:String = "";
      
      private var var_1959:int = 0;
      
      private var var_1957:String = "";
      
      private var var_1960:int = 0;
      
      private var var_1638:int = 0;
      
      private var var_1958:String = "";
      
      private var var_595:String = "";
      
      private var _id:int = 0;
      
      private var var_194:Boolean = false;
      
      private var var_227:int = 0;
      
      private var var_1956:String = "";
      
      private var _name:String = "";
      
      private var var_1642:int = 0;
      
      private var _y:Number = 0;
      
      private var var_81:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_227;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_194)
         {
            var_227 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_194)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1959;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_194)
         {
            var_1960 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1956;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_194)
         {
            var_1958 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_194)
         {
            var_1956 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_194)
         {
            var_1638 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_194)
         {
            var_295 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_194)
         {
            var_1959 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_194)
         {
            var_595 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1960;
      }
      
      public function get groupID() : String
      {
         return var_1958;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_194)
         {
            var_1642 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_194)
         {
            var_1957 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_194 = true;
      }
      
      public function get sex() : String
      {
         return var_595;
      }
      
      public function get figure() : String
      {
         return var_295;
      }
      
      public function get webID() : int
      {
         return var_1642;
      }
      
      public function get custom() : String
      {
         return var_1957;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_194)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_194)
         {
            var_81 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_194)
         {
            var_82 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1638;
      }
   }
}
