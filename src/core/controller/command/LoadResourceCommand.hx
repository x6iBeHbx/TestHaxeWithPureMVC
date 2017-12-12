package core.controller.command;

import core.assets.ResourceWarehouse;
import core.config.notification.GeneralNotificationEnum;
import game.view.vl.SlotBackgroundViewLogic;
import game.view.mediator.SlotBackgroundMediator;
import haxe.Json;
import haxe.Timer;
import openfl.events.Event;
import openfl.net.URLLoader;
import openfl.net.URLRequest;
import org.puremvc.haxe.interfaces.INotification;
import org.puremvc.haxe.patterns.command.SimpleCommand;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class LoadResourceCommand extends SimpleCommand
{

	override public function execute(notification:INotification):Void
	{
		super.execute(notification);
	
		var urlLoader = new URLLoader();
		urlLoader.addEventListener(Event.COMPLETE, resLoaded);
		urlLoader.load(new URLRequest("json/slot_test.json"));
	}
	
	private function resLoaded(e:Event):Void 
	{
		var loader = cast(e.target, URLLoader);
		var json = Json.parse(loader.data);
		
		sendNotification(GeneralNotificationEnum.PREPARE_REEL_ENGINE_COMMAND, json);
		
		ResourceWarehouse.getInstance().enqueue(json.resPath);
		ResourceWarehouse.getInstance().loadQueue(loadComplete);
	}
	
	private function loadComplete(ratio:Float):Void 
	{
		//trace(ratio);
		if (ratio == 1){
			loadFinished();
		}
	}
	
	private function loadFinished():Void{
		//trace("load finished");
		
		var aaa = ResourceWarehouse.getInstance().getTexture("cherry-symbol.png");
		facade.registerMediator(new SlotBackgroundMediator(new SlotBackgroundViewLogic(["slotBG"])));
	}
}