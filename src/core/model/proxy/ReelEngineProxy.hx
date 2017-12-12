package core.model.proxy;

import org.puremvc.haxe.patterns.proxy.Proxy;
import reelEngine.ReelEngineManager;
import starling.display.Sprite;
import starling.events.Event;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class ReelEngineProxy extends Proxy 
{
	
	public static inline var NAME:String = "ReelEngineProxy";
	
	private var _reelEngineManager:ReelEngineManager;
	private var _sprite:Sprite;
	public function new(?data:Any) 
	{
		super(NAME, data);
		_reelEngineManager = new ReelEngineManager();
		_reelEngineManager.setFieldsData(getData().fields);
	}
	
	public function prepareTimer(sprite:Sprite):Void{
		_sprite = sprite;
	}
	
	public function spin():Void{
		
		_sprite.addEventListener(Event.ENTER_FRAME, _reelEngineManager.allReelSpin);
	}
	
	public function stop():Void{
		
		_sprite.removeEventListener(Event.ENTER_FRAME, _reelEngineManager.allReelSpin);
	}
}