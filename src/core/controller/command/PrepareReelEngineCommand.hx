package core.controller.command;

import core.model.proxy.ReelEngineProxy;
import core.view.mediator.RootMediator;
import haxe.Timer;
import org.puremvc.haxe.interfaces.INotification;
import org.puremvc.haxe.patterns.command.SimpleCommand;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class PrepareReelEngineCommand extends SimpleCommand 
{

	override public function execute(notification:INotification):Void 
	{
		super.execute(notification);
		
		facade.registerProxy(new ReelEngineProxy(notification.getBody()));
		
		getReelEngineProxy().prepareTimer(getRootScene().getViewComponent());
		
		getReelEngineProxy().spin();
		
		Timer.delay(getReelEngineProxy().stop, 1000);
	}
	
	private function getReelEngineProxy():ReelEngineProxy{
		
		return cast(facade.retrieveProxy(ReelEngineProxy.NAME), ReelEngineProxy);
	}
	
	private function getRootScene():RootMediator{
		return cast(facade.retrieveMediator(RootMediator.NAME), RootMediator);
	}
}