package;


import lime.app.Config;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {
	
	
	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	
	
	public static function init (config:Config):Void {
		
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
		
		var rootPath = null;
		
		if (config != null && Reflect.hasField (config, "rootPath")) {
			
			rootPath = Reflect.field (config, "rootPath");
			
		}
		
		if (rootPath == null) {
			
			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif (sys && windows && !cs)
			rootPath = FileSystem.absolutePath (haxe.io.Path.directory (#if (haxe_ver >= 3.3) Sys.programPath () #else Sys.executablePath () #end)) + "/";
			#else
			rootPath = "";
			#end
			
		}
		
		Assets.defaultRootPath = rootPath;
		
		#if (openfl && !flash && !display)
		
		#end
		
		var data, manifest, library;
		
		data = '{"name":null,"assets":"aoy4:pathy23:img%2Fcherry-symbol.pngy4:sizei1746y4:typey5:IMAGEy2:idR1goR0y21:img%2Fclover-chip.pngR2i2323R3R4R5R6goR0y22:img%2Fdiamond-chip.pngR2i2086R3R4R5R7goR0y17:img%2FforTest.pngR2i48604R3R4R5R8goR0y17:img%2FforTest.xmlR2i1478R3y4:TEXTR5R9goR0y20:img%2Fheart-chip.pngR2i2179R3R4R5R11goR0y21:img%2FIconsStatic.pngR2i48604R3R4R5R12goR0y21:img%2FIconsStatic.xmlR2i1230R3R10R5R13goR0y34:img%2Finclined-lemon%20%281%29.pngR2i1579R3R4R5R14goR0y23:img%2FmySpritesheet.pngR2i799010R3R4R5R15goR0y23:img%2FmySpritesheet.xmlR2i6722R3R10R5R16goR0y18:img%2Fnumber-7.pngR2i2099R3R4R5R17goR0y16:img%2FslotBG.pngR2i3136792R3R4R5R18goR0y20:img%2Fspade-chip.pngR2i2214R3R4R5R19goR0y14:img%2Ftest.pngR2i16426R3R4R5R20goR0y14:img%2Ftest.xmlR2i914R3R10R5R21goR0y15:img%2Ftest2.pngR2i10691R3R4R5R22goR0y15:img%2Ftest2.xmlR2i1142R3R10R5R23goR0y15:img%2Ftest3.pngR2i12162R3R4R5R24goR0y15:img%2Ftest3.xmlR2i1310R3R10R5R25goR0y24:json%2FResourcePath.jsonR2i75R3R10R5R26goR0y21:json%2Fslot_test.jsonR2i585R3R10R5R27gh","version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		
		
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__img_cherry_symbol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_clover_chip_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_diamond_chip_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_fortest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_fortest_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_heart_chip_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_iconsstatic_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_iconsstatic_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_inclined_lemon__1__png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_myspritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_myspritesheet_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_number_7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_slotbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_spade_chip_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_test_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_test_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_test2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_test2_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__img_test3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_test3_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__json_resourcepath_json extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__json_slot_test_json extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__manifest_default_json extends flash.utils.ByteArray { }


#elseif (desktop || cpp)

@:file("") #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else



#end

#if (openfl && !flash)



#end
#end