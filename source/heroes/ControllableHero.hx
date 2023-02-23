package heroes;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;

class ControllableHero extends FlxSprite {
    var DirectionX:Float;
    var DirectionY:Float;

    public function new(X:Float=0, Y:Float=0)
    {
        super(X, Y);
        makeGraphic(25, 50, 0xFF006118);

    }
    override public function update(elapsed:Float)
    {
        super.update(elapsed);
        
        if(FlxG.keys.pressed.UP)
        {
            this.y -=5;
        }
        if(FlxG.keys.pressed.DOWN)
        {
            this.y +=5;
        }
        if(FlxG.keys.pressed.LEFT)
        {
            this.x -=5;
        }
        if(FlxG.keys.pressed.RIGHT)
        {
            this.x +=5;
        }
    }
}