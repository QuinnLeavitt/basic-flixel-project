package;

import flixel.FlxState;
import heroes.Hero;
import heroes.ScreensaverHero;
import heroes.ControllableHero;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		var text = new flixel.text.FlxText(0, 0, 0, "How are ya, hero?", 32);
		text.screenCenter();
		add(text);

		var myHero = new Hero(200, 400);
		add(myHero);
		var ScreensaverHero1 = new ScreensaverHero(100, 200);
		add(ScreensaverHero1);
		var ScreensaverHero2 = new ScreensaverHero(200, 100);
		add(ScreensaverHero2);
		var ScreensaverHero3 = new ScreensaverHero(50, 20);
		add(ScreensaverHero3);
		var ScreensaverHero4 = new ScreensaverHero(80, 80);
		add(ScreensaverHero4);
		var ControllableHero = new ControllableHero(250, 250);
		add(ControllableHero);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}