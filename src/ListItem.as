package
{
	import starling.display.Image;
	import starling.textures.Texture;

	public class ListItem
	{
		public var titleField:String;
		public var accessoryField:String;
		public var icon:Texture;
		
		public function ListItem(titleField:String, accessoryField:String = null, icon:Texture= null)
		{
			this.titleField = titleField;
			this.accessoryField = accessoryField;
			this.icon = icon;
		}
	}
}