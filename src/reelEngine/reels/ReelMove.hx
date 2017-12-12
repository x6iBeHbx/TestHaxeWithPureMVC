package reelEngine.reels;
import openfl.utils.Function;
import reelEngine.config.DirectionType;
import reelEngine.icons.Icon;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class ReelMove
{
	public function new(){}
	
	public function move(reel:Reel):Void{
		
		for (icon in reel.icons){
			trace(icon.positionY, icon.id);
			icon.moveFunction();
		}
	}
	
	public function changeSpeed(value:Int, reel:Reel):Void{
		
		reel.speed = value;
	}
	
	public function direction(reel:Reel):Void{
		
		for (icon in reel.icons){
			icon.moveFunction = switchMoveFunction(icon, reel);
		}
	}
	
	private function switchMoveFunction(icon:Icon, reel:Reel):Function{
		
		var moveFunction = function() {icon.positionY = icon.positionY + reel.speed; }

		switch(reel.diraction) {
			case DirectionType.FROM_UP_TO_DOWN:
				moveFunction = function() {icon.positionY = icon.positionY + reel.speed; }
			case DirectionType.FROM_DOWN_TO_UP:
				moveFunction = function() {icon.positionY = icon.positionY - reel.speed; }
			case DirectionType.FROM_LEFT_TO_RIGHT:
				moveFunction = function() {icon.positionX = icon.positionX + reel.speed; }
			case DirectionType.FROM_RIGHT_TO_LEFT:
				moveFunction = function() {icon.positionX = icon.positionX - reel.speed; }
		}
		
		return moveFunction;
	}
}