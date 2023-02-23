package heroes;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;

class ScreensaverHero extends FlxSprite {
    var DirectionX:Float;
    var DirectionY:Float;

    public function new(X:Float=0, Y:Float=0)
    {
        super(X, Y);
        makeGraphic(20, 40, 0xFFFFFFFF);
        this.DirectionX = FlxG.random.float(0,1);
        this.DirectionY = FlxG.random.float(0,1);
    }
    override public function update(elapsed:Float)
    {
        super.update(elapsed);
        if(this.DirectionX < .5){
            this.x += 1;
        }
        else{
            this.x -= 1;
        }
        if(this.DirectionY < .5){
            this.y += 1;
        }
        else{
            this.y -= 1;
        }

        if((this.x) > 150 ){
            this.color = 0xFF00FF00;
        }
        if((this.y) > 250 ){
            this.color = 0xFFFA0678;
        }
        if((this.x) < 50 ){
            this.color = 0xFF4400FF;
        }
        if((this.y) < 50 ){
            this.color = 0xFFF7E602;
        }
    }
}