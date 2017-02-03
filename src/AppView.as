package
{
	import flash.display.Stage;
	import flash.text.TextFormat;
	import flash.utils.Dictionary;
	
	import starling.core.Starling;
	import starling.display.Image;
	import starling.textures.Texture;
	
	public class AppView
	{
		private var mode:int;
		public var stageWidth:int;
		public var stageHeight:int;
		private var appScale:int = 0;
		private var lastScreen:String = "";
		private var whereToNextScreen:String = "";
		private var version:String = "v0.18";
		
		private var nextMotivQuipIdx:int = 0;
		private var nextIntroQuipIdx:int = 0;
		private var nextStepUpQuipIdx:int = 0;
		private var nextAttaboyQuipIdx:int = 0;
		private var nextAdvertQuipIdx:int = 0;
		private var stage:flash.display.Stage; 
		private var reportEndDate:Date = new Date();
		private var reportRange:int = 30;
		private var popDate:Date;
		private var txtFmtDictionary:Dictionary = new Dictionary();
		private var imageDictionary:Dictionary = new Dictionary();
		private var starling:Starling;
		
		[Embed(source="../assets/fonts/bitmap/arial.ttf", embedAsCFF="false", fontFamily="Arial")]
		private static const Arial:Class;
		
		public function AppView()
		{
			
		}
		
		public function setStarling(s:Starling):void
		{
		this.starling = s;	
		}

		public function getStarling():Starling
		{
			return this.starling;	
		}
		
		public function getTexture(imgName:String):Image
		{
			//private var barbells:Texture = Texture.fromBitmap(new SkillGuide.BARBELLS_IMAGE());
			//private var barbellsImage:Image = new Image(barbells);
			 
			var thisTexture:starling.textures.Texture;
			//var bmpFile:File = File.applicationDirectory.resolvePath(imgName + Main._appView.getAppScale() + "x.png");  // e.g. barbells1x.png
//			var bitmapData:BitmapData;
//			var loader:Loader = new Loader();
//			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
//			loader.load(new URLRequest("../assets/images/" + imgName + Main._appView.getAppScale() + "x.png"));
//			
//			function onComplete (event:flash.events.Event):void
//			{
//				bitmapData = Bitmap(LoaderInfo(event.target).content).bitmapData;
//			}
//			thisTexture = starling.textures.Texture.fromBitmap(imgName);
			var imgkey:String = imgName + "." + Main._appView.getAppScale() + "x";
//			if (imageDictionary[imgkey] == undefined)
//			{
//				var tex:Texture = Texture.fromBitmap(new SkillGuide.SPINNER_IMAGE());
//				var img:Image = new Image( tex );
//				imageDictionary[imgkey] = img;
//			}
			return imageDictionary[imgkey];
		}
		
		public function getTxtFmt(size:int, rgb:int, boldB:Boolean):TextFormat
		{
			var tfkey:String = size + "." + rgb + "." + boldB;
			if (txtFmtDictionary[tfkey] == undefined)
			{
				txtFmtDictionary[tfkey]= new TextFormat("Arial", size, rgb, boldB); // if it does not exist, make it.
			}
			return txtFmtDictionary[tfkey];
		}
		
		public function getStdButtonHeight():int
		{
			return 40 * this.appScale;
		}
		
		public function setPopDate(d:Date):void
		{
			this.popDate = d;
		}

		public function getPopDate():Date
		{
			return this.popDate;
		}
		
		public function setWhereToScreen(s:String):void
		{
			whereToNextScreen = s;
		}

		public function setReportRange(r:int):void
		{
			this.reportRange = r;
		}
		
		public function setReportEndDate(d:Date):void
		{
			this.reportEndDate = d;
		}
		
		public function getReportRange():int
		{
			return this.reportRange;
		}
		
		public function getReportEndDate():Date
		{
			return this.reportEndDate;
		}
		
		public function getStage():flash.display.Stage
		{
			return this.stage;
		}
		
		public function setStage(s:flash.display.Stage):void
		{
			this.stage = s;
		}

		public function getWhereToScreen():String
		{
			return this.whereToNextScreen;
		}
		
		public function setLastScreen(s:String):void
		{
			this.lastScreen = s;
		}
		
		public function getLastScreen():String
		{
			if (this.lastScreen=="")
				return Constants.INDEX_SCREEN;
			return this.lastScreen;	
		}
		
		public function getVersion():String
		{
			return version;
		}
		
		public function setModeTo(m:int):void
		{
			this.mode = m;
			trace("SetMode:" + m);
		}
		
		public function getMode():int
		{
			trace("GetMode:" + this.mode);
			return this.mode;
		}
		
		public function showHourGlass(b:Boolean):void
		{
			
		}
		
		public function setAppScale(i:int):void
		{
			trace("AppScale set to: " + i);
			this.appScale = i;
		}
		
		public function getAppScale():int
		{
			return this.appScale;
		}
	}
}