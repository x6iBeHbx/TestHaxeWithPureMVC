package core.view.mediator;

import core.config.notification.GeneralNotificationEnum;
import core.view.viewLogic.UIViewLogic;
import org.puremvc.haxe.patterns.mediator.Mediator;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class UIMediator extends Mediator 
{
	public var vComponent(default, null):UIViewLogic;
	public function new(?mediatorName:String, ?viewComponent:UIViewLogic) 
	{
		super(mediatorName, viewComponent);
		this.vComponent = viewComponent;
	}
	
	private function get_vComponent() return viewComponent;
	
	override public function onRegister():Void 
	{
		super.onRegister();
		sendNotification(GeneralNotificationEnum.ADD_CHILD_TO_ROOT, vComponent.content);
	}
	
	override public function onRemove():Void 
	{
		sendNotification(GeneralNotificationEnum.REMOVE_CHILD_FROM_ROOT, vComponent.content);
		super.onRemove();
	}
}