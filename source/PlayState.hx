package;

import flixel.FlxState;
import heroes.Hero;
import heroes.ScreensaverHero;
import heroes.ControllableHero;
import flixel.FlxG;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		var text = new flixel.text.FlxText(0, 0, 0, "How are ya, hero?", 32);
		text.screenCenter();
		add(text);

		for (i in 0...10) {
			add(new ScreensaverHero(FlxG.random.float(50,500), FlxG.random.float(50,500)));
		}
		var ControllableHero = new ControllableHero(250, 250);
		add(ControllableHero);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}