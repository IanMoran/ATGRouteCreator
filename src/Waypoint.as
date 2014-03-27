package  
{
	import flash.filesystem.File;
	/**
	 * ...
	 * @author Ian Moran
	 */
	public class Waypoint 
	{
		
		public var marker:Object;
		public var circle:Object;
		public var sound:File = null;
		public var soundName:String = null;

		public function Waypoint(inMarker:Object, inCircle:Object, soundNameIn:String, soundIn:File):void {
			marker = inMarker;
			circle = inCircle;
			try{
				if (soundNameIn != "No File") {
					sound = soundIn;
					soundName = soundNameIn;
					if (!sound.exists) {
						sound = null;
					}
				}
			}
			catch (error:Error) {
				trace("Error:", error.message);
				return;
			}
		}

		public function editSound(filepath:File):void{
			sound = filepath;
			soundName = filepath.name;
		}
		
	}

}