package
{
	import feathers.themes.MetalWorksMobileTheme;
	
	import starling.display.DisplayObjectContainer;
	
	public class FifaTheme extends MetalWorksMobileTheme
	{
		public function FifaTheme( root:DisplayObjectContainer, scaleToDPI:Boolean = true )
		{
			super( root, scaleToDPI );
		}
		
		override protected function initialize():void
		{
			super.initialize();
			
			// set new initializers here
		}
	}
}