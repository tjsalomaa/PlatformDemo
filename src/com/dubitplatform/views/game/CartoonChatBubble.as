package com.dubitplatform.views.game
{
	import flash.text.TextFormat;
	
	import uk.co.dubit.graphics.render2D.IRenderObject;
	import uk.co.dubit.graphics.render2D.types.DefaultChatBubble2D;

	public class CartoonChatBubble extends DefaultChatBubble2D
	{
		[Embed(source="/../assets/fonts/Deeko_Comic.ttf", fontFamily="Deeko")]
		private var deeko:String;		
		
		public function CartoonChatBubble(name:String)
		{
			super(name);
			
			textFormat = new TextFormat("Deeko", 11, 0);
		}
		
		override protected function readRenderObjectAttributes(renderObject:IRenderObject):void
		{
			super.readRenderObjectAttributes(renderObject);
			
			embedFonts = true;
		}
		
	}
}