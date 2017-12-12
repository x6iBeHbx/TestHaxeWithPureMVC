package core;

import core.config.notification.GeneralNotificationEnum;
import org.puremvc.haxe.patterns.facade.Facade;
import starling.display.Sprite;

class AppFacade extends Facade
{

	private static var _instance:AppFacade;

	public static function getInstance():AppFacade
	{
		if (_instance == null)
		{
			_instance = new AppFacade();
		}
		return cast(_instance, AppFacade);
	}

	public function startUp(StartupCommand:Any, root:Sprite):Void
	{
		registerCommand(GeneralNotificationEnum.START_UP_COMMAND, StartupCommand);
		sendNotification(GeneralNotificationEnum.START_UP_COMMAND, root);
	}
}