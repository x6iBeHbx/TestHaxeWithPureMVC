package game.view.vl;

import core.view.viewLogic.UIViewLogic;
import starling.display.Image;
import starling.utils.ScaleMode;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class SlotBackgroundViewLogic extends UIViewLogic 
{

	public function new(?assetsNames:Array<String>) 
	{
		super(assetsNames);
		
		var image = new Image(textures.get("slotBG"));
		content.addChild(image);
	}
}