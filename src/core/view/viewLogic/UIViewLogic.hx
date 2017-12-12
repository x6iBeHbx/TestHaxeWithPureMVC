package core.view.viewLogic;

import core.assets.ResourceWarehouse;
import starling.display.DisplayObjectContainer;
import starling.events.EventDispatcher;
import starling.textures.Texture;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class UIViewLogic extends EventDispatcher 
{
	public var textures(default, null):Map<String, Texture>;
	public var content(default, null):DisplayObjectContainer;
	
	public function new(?assetsNames:Array<String>) 
	{
		super();
		
		textures = new Map<String, Texture>();
		content = new DisplayObjectContainer();
		
		initArt(assetsNames);
	}
	
	private function initArt(?assetsNames:Array<String>):Void{
		
		for(name in assetsNames){
			textures.set(name ,ResourceWarehouse.getInstance().getTexture(name));
		}
	}
	
	private function get_textures() return textures;
	private function get_content() return content;
}