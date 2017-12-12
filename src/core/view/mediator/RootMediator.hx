package core.view.mediator;

import core.config.notification.GeneralNotificationEnum;
import org.puremvc.haxe.interfaces.INotification;
import org.puremvc.haxe.patterns.mediator.Mediator;
import starling.display.Sprite;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class RootMediator extends Mediator
{

	public static inline var NAME = "RootMediator";
	public function new(?viewComponent:Sprite)
	{
		super(NAME, viewComponent);
	}

	override public function listNotificationInterests():Array<String>
	{
		return [GeneralNotificationEnum.ADD_CHILD_TO_ROOT,
		GeneralNotificationEnum.REMOVE_CHILD_FROM_ROOT];
	}

	override public function handleNotification(notification:INotification):Void
	{
		trace(notification.getName());
		switch (notification.getName())
		{
			case GeneralNotificationEnum.ADD_CHILD_TO_ROOT:
				viewComponent.addChild(notification.getBody());
			case GeneralNotificationEnum.REMOVE_CHILD_FROM_ROOT:
				viewComponent.removeChild(notification.getBody());
		}
	}
}