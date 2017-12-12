package reelEngine.config;

/**
 * ...
 * @author Andrii Andriushchenko
 */
@:enum
abstract DirectionType (Int){
	var FROM_UP_TO_DOWN = 0;
	var FROM_DOWN_TO_UP = 1;
	var FROM_LEFT_TO_RIGHT = 2;
	var FROM_RIGHT_TO_LEFT = 3;
}