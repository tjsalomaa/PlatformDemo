package com.dubitplatform.game
{
	import flash.display.Sprite;
	import flash.filters.DropShadowFilter;
	
	import uk.co.dubit.graphics.render2D.SWFActionPlayer;

	public class Avatar extends SWFActionPlayer
	{
		public function Avatar(name:String)
		{
			super(name);
			
			drawShadow();
		}
		
		private function drawShadow () : void
		{
			var shadow : Sprite = new Sprite();
			shadow.graphics.beginFill(0);
			shadow.graphics.drawCircle(0, 0, 30);
			shadow.graphics.endFill();
			shadow.scaleY = 0.15;
			shadow.alpha = 0.2;
			shadow.filters = [new DropShadowFilter(0, 45, 0x000000, 0.7, 5, 5, 1, 2)]
			
			sprite.addChild(shadow);
		}
	}
}