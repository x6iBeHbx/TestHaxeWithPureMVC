package;

import core.RootSprite;
import openfl.display.Sprite;
import openfl.display.StageAlign;
import openfl.display.StageDisplayState;
import openfl.display.StageScaleMode;
import openfl.events.Event;
import starling.core.Starling;
import openfl.utils.Function;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class Main extends Sprite
{
	private var _starlingApp:Starling;
	
	public function new()
	{
		super();

		this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
	}

	private function onAddedToStage(e:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		
		//stage.displayState = StageDisplayState.FULL_SCREEN;

		_starlingApp = new Starling(RootSprite, stage);
		_starlingApp.start();
	}
}
