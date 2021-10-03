package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1046:SoundChannel = null;
      
      private var var_872:Boolean;
      
      private var var_1047:Sound = null;
      
      private var var_759:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1047 = param1;
         var_1047.addEventListener(Event.COMPLETE,onComplete);
         var_759 = 1;
         var_872 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_872;
      }
      
      public function stop() : Boolean
      {
         var_1046.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_872 = false;
         var_1046 = var_1047.play(0);
         this.volume = var_759;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_759;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1046.position;
      }
      
      public function get length() : Number
      {
         return var_1047.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_759 = param1;
         if(var_1046 != null)
         {
            var_1046.soundTransform = new SoundTransform(var_759);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_872 = true;
      }
   }
}
