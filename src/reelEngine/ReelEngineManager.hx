package reelEngine;
import reelEngine.fields.SlotField;
import reelEngine.reels.ReelMove;

/**
 * ...
 * @author Andrii Andriushchenko
 */
class ReelEngineManager 
{
	private var fields:Array<SlotField>;
	private var reelMove:ReelMove;
	
	
	public function new(){
		
		fields = new Array<SlotField>();
		reelMove = new ReelMove();
	}
	
	public function setFieldsData(slotFields:Array<Dynamic>):Void{
		
		for (field in slotFields){
			var slotField = new SlotField(field);
			fields.push(slotField);
		}
	}
	
	public function allReelSpin():Void{
		
		for (field in fields){
			for (reel in field.reels){
				reelMove.direction(reel);
				reelMove.move(reel);
			}
		}
	}
}