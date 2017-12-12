package reelEngine.reels;
import reelEngine.icons.Icon;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class Reel 
{
	public var reelId:Int;
	public var speed:Int;
	public var diraction:Int;
	
	public var topIcons:Array<Icon>;
	public var icons:Array<Icon>;
	public var bottomIcons:Array<Icon>;
	
	public function new(reelInfo:Dynamic){
		
		reelId = reelInfo.id;
		speed = reelInfo.speed;
		diraction = reelInfo.diraction;
		createIcons(reelInfo.reelLength, reelInfo);
	}
	
	private function createIcons(reelLength:Int, reelInfo:Dynamic):Void{
		
		icons = new Array<Icon>();
		
		for (i in 0...reelLength){
			icons.push(createIcon(i, reelInfo));
		}
	}
	
	private function createIcon(id:Int, reelInfo:Dynamic):Icon{
		var icon = new Icon();
			icon.id = id;
			icon.heigth = reelInfo.iconHeight;
			icon.width = reelInfo.iconWidth;
			icon.positionY = id * icon.heigth;
			icon.positionX = reelId * icon.width;
			return icon;
	}
}