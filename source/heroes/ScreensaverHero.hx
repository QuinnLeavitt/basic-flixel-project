package heroes;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;

class ScreensaverHero extends FlxSprite {
    var HeroHeight:Int = 50;
    var HeroWidth:Int = 25;
    var StartingHeroColor:FlxColor = 0xFFFFFFFF;
    var Blue:FlxColor = 0xFF0000FF;
    var Yellow:FlxColor = 0xFFFFFF00;
    var Green:FlxColor = 0xFF008000;
    var Red:FlxColor = 0xFFFF0000;
    var SpeedX:Float = FlxG.random.float(-50, 50);
    var SpeedY:Float = FlxG.random.float(-50, 50);

    public function new(X:Float=0, Y:Float=0)
    {
        super(X, Y);
        super.makeGraphic(HeroWidth, HeroHeight, StartingHeroColor);
        this.velocity.x = SpeedX;
        this.velocity.y = SpeedY;
    }
    override public function update(elapsed:Float)
    {
        if (this.velocity.y > 0 && this.y >= FlxG.height){
            this.y = 0; 
        }
        else if (this.velocity.y < 0 && (this.y + this.height) <= 0){
            this.y = FlxG.height;
        }

        if (this.velocity.x > 0 && this.x >= FlxG.width){
            this.x = -(this.width);   
        }
        else if (this.velocity.x < 0 && (this.x + this.width) <= 0){
            this.x = FlxG.width; 
        }
        // Accelerate screensaver heroes if spacebar is pressed
        if(FlxG.keys.pressed.SPACE)
        {
            SpeedX *= 1.01;
            SpeedY *= 1.01;
        }
        // Reinitialize speeds if R is pressed
        if(FlxG.keys.pressed.R)
        {
            SpeedX = FlxG.random.float(-50, 50);
            SpeedY = FlxG.random.float(-50, 50);
        }

        if((this.x) > 150 ){
            this.color = Green;
        }
        if((this.y) > 250 ){
            this.color = Red;
        }
        if((this.x) < 50 ){
            this.color = Blue;
        }
        if((this.y) < 50 ){
            this.color = Yellow;
        }

        this.velocity.x = SpeedX;
        this.velocity.y = SpeedY;

        super.update(elapsed);
    }
}