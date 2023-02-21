package;

import flixel.FlxState;
import haxe.display.Protocol.HaxeResponseErrorData;
import heroes.Hero;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var myHero = new Hero(200, 400);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
