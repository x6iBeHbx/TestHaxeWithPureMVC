package reelEngine.fields;
import haxe.Json;
import reelEngine.reels.Reel;
/**
 * ...
 * @author Andrii Andriushchenko
 */
class SlotField 
{
	public var id:Int;
	public var reels:Array<Reel>;
	
	public function new(fieldInfo:Dynamic) 
	{
		reels = new Array<Reel>();
		
		id = fieldInfo.id;
		var reelsInfo:Array<Dynamic> = fieldInfo.reels; 
		
		for(reelInfo in reelsInfo){
			var reel = new Reel(reelInfo);
			reels.push(reel);
		}
	}
}