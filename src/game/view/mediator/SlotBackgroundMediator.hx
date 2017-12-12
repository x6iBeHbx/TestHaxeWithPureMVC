package game.view.mediator;

import core.view.mediator.UIMediator;
import core.view.viewLogic.UIViewLogic;
import game.view.vl.SlotBackgroundViewLogic;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class SlotBackgroundMediator extends UIMediator 
{
	public static inline var NAME:String = "SlotBackgroundMediator";
	public function new(?viewComponent:SlotBackgroundViewLogic) 
	{
		super(NAME, viewComponent);
	}
	
}