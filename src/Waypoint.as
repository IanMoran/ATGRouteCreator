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

		public function Waypoint(inMarker:Object, inCircle:Object, file:String):void{
			marker = inMarker;
			circle = inCircle;
			try{
				if (file != "No File") {
					sound = File.documentsDirectory;
					sound = sound.resolvePath("Automated_Tour_Guide/Waypoint Descriptions/" + file);
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
		}
		
	}

}