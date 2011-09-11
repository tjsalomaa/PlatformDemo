package com.dubitplatform.game
{
	import flash.display.DisplayObject;
	import flash.filters.GlowFilter;
	
	import uk.co.dubit.graphics.render2D.IRenderObject;
	import uk.co.dubit.graphics.render2D.materials.Material;
	import uk.co.dubit.graphics.render2D.types.TrackingDisplayObject;

	public class AwardXPEffect extends TrackingDisplayObject
	{
		[Embed(source="/../assets/gui_images/award_xp_effect.swf")]
		protected var EffectClass:Class;
		
		public function AwardXPEffect(name:String)
		{
			super(name);
		}
		
		override public function set renderObject(value:IRenderObject) : void
		{
			super.renderObject = value;
			
			if(renderObject)
			{
				sprite.filters = [ new GlowFilter(000000,1,4,4,10,1) ];
				
				var effect:DisplayObject = new EffectClass();

				effect.x = 100 * target.displayObject.scaleX;
				effect.y = 350 * target.displayObject.scaleY;
				effect.scaleX = target.displayObject.scaleX * 0.5;
				effect.scaleY = target.displayObject.scaleY * 0.5; 
				
				material = new Material(effect);
			}
		}
	}
}