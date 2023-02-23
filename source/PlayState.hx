package;

import flixel.FlxState;
import haxe.display.Protocol.HaxeResponseErrorData;
import heroes.Hero;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		var text = new flixel.text.FlxText(0, 0, 0, "How are ya, hero?", 32);
		text.screenCenter();
		add(text);

		var myHero = new Hero(200, 400);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
