package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1881:int;
      
      private var var_295:String;
      
      private var var_1709:int;
      
      private var var_1883:int;
      
      private var var_1880:int;
      
      private var var_2103:int;
      
      private var _nutrition:int;
      
      private var var_1245:int;
      
      private var var_2106:int;
      
      private var var_2104:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1878:int;
      
      private var var_2105:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1709;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2103;
      }
      
      public function flush() : Boolean
      {
         var_1245 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2106;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2104;
      }
      
      public function get maxNutrition() : int
      {
         return var_2105;
      }
      
      public function get figure() : String
      {
         return var_295;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1883;
      }
      
      public function get petId() : int
      {
         return var_1245;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1245 = param1.readInteger();
         _name = param1.readString();
         var_1709 = param1.readInteger();
         var_2106 = param1.readInteger();
         var_1880 = param1.readInteger();
         var_2104 = param1.readInteger();
         _energy = param1.readInteger();
         var_2103 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2105 = param1.readInteger();
         var_295 = param1.readString();
         var_1883 = param1.readInteger();
         var_1878 = param1.readInteger();
         var_1881 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1880;
      }
      
      public function get ownerId() : int
      {
         return var_1878;
      }
      
      public function get age() : int
      {
         return var_1881;
      }
   }
}
