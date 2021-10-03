package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_295:String = "";
      
      private var var_1957:String = "";
      
      private var var_1960:int = 0;
      
      private var var_1638:int = 0;
      
      private var _type:int = 0;
      
      private var var_1958:String = "";
      
      private var var_595:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1642:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1960 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1958 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_295 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_595 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1960;
      }
      
      public function set webID(param1:int) : void
      {
         var_1642 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1958;
      }
      
      public function set custom(param1:String) : void
      {
         var_1957 = param1;
      }
      
      public function get figure() : String
      {
         return var_295;
      }
      
      public function get sex() : String
      {
         return var_595;
      }
      
      public function get custom() : String
      {
         return var_1957;
      }
      
      public function get webID() : int
      {
         return var_1642;
      }
      
      public function set xp(param1:int) : void
      {
         var_1638 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1638;
      }
   }
}
