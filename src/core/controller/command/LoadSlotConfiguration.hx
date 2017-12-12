package core.controller.command;

import org.puremvc.haxe.interfaces.INotification;
import org.puremvc.haxe.patterns.command.SimpleCommand;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class LoadSlotConfiguration extends SimpleCommand 
{

	override public function execute(notification:INotification):Void 
	{
		super.execute(notification);
		
		var tempUrlSlotCongfig = "";
	}
	
}