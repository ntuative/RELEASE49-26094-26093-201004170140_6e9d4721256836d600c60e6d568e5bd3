package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_584:String = "RWUAM_RESPECT_USER";
      
      public static const const_721:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_570:String = "RWUAM_START_TRADING";
      
      public static const const_512:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_648:String = "RWUAM_WHISPER_USER";
      
      public static const const_685:String = "RWUAM_IGNORE_USER";
      
      public static const const_409:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_703:String = "RWUAM_BAN_USER";
      
      public static const const_566:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_466:String = "RWUAM_KICK_USER";
      
      public static const const_687:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_638:String = " RWUAM_RESPECT_PET";
      
      public static const const_464:String = "RWUAM_KICK_BOT";
      
      public static const const_1300:String = "RWUAM_TRAIN_PET";
      
      public static const const_616:String = "RWUAM_PICKUP_PET";
      
      public static const const_504:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_712:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
