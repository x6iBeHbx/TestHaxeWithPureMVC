package core;

import core.controller.command.StartUpCommand;
import starling.display.Sprite;
import starling.events.Event;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class RootSprite extends Sprite
{

	public function new()
	{
		super();
		this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
	}

	private function onAddedToStage(e:Event):Void
	{
		
		removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		AppFacade.getInstance().startUp(StartUpCommand, cast(this, Sprite));
	}
}