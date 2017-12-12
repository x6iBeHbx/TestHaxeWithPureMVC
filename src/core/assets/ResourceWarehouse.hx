package core.assets;
import openfl.Vector;
import openfl.utils.Dictionary;
import starling.textures.Texture;
import starling.utils.AssetManager;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class ResourceWarehouse extends AssetManager
{
	private var _textures:Map<String, Texture> = new Map<String, Texture>();
	private var _atlases:Map<String, Texture> = new Map<String, Texture>();

	private static var _instance:ResourceWarehouse;

	public static function  getInstance():ResourceWarehouse
	{
		if (_instance==null)
		{
			_instance = new ResourceWarehouse();
		}
		return _instance;
	}
	
	//public function addTexture(key:String, texture:Texture):Void{
		//
		//if (key == null || texture == null){
			//throw "Code Error --->>> ResourceWarehouse: addTexture() -> Parameters should not be null";
		//}
		//
		//_textures.set(name, texture);
	//}
//
	//public function getTexture(key:String):Texture
	//{
//
		//return _textures.get(key);
	//}
}