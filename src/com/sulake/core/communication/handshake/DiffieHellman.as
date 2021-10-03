package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1365:BigInteger;
      
      private var var_582:BigInteger;
      
      private var var_1595:BigInteger;
      
      private var var_1594:BigInteger;
      
      private var var_2252:BigInteger;
      
      private var var_1860:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1365 = param1;
         var_1595 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2252.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1594 = new BigInteger();
         var_1594.fromRadix(param1,param2);
         var_2252 = var_1594.modPow(var_582,var_1365);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1860.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1365.toString() + ",generator: " + var_1595.toString() + ",secret: " + param1);
         var_582 = new BigInteger();
         var_582.fromRadix(param1,param2);
         var_1860 = var_1595.modPow(var_582,var_1365);
         return true;
      }
   }
}
