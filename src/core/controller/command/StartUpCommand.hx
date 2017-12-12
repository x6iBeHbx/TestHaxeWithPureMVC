package core.controller.command;

import core.config.notification.GeneralNotificationEnum;
import core.view.mediator.RootMediator;
import org.puremvc.haxe.interfaces.INotification;
import org.puremvc.haxe.patterns.command.SimpleCommand;
import starling.display.Quad;
import starling.display.Sprite;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class StartUpCommand extends SimpleCommand
{

	override public function execute(notification:INotification):Void
	{
		super.execute(notification);

		registerCoreMediator(notification.getBody());
		registerCoreCommand();
		
		sendNotification(GeneralNotificationEnum.LOAD_RESOURCE_COMMAND);
	}

	function registerCoreMediator(root:Sprite)
	{
		facade.registerMediator(new RootMediator(root));
	}

	function registerCoreCommand()
	{
		facade.registerCommand(GeneralNotificationEnum.LOAD_RESOURCE_COMMAND, LoadResourceCommand);
		facade.registerCommand(GeneralNotificationEnum.PREPARE_REEL_ENGINE_COMMAND, PrepareReelEngineCommand);
	}
}