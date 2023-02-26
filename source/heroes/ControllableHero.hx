package heroes;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;

class ControllableHero extends FlxSprite {
    var HeroHeight:Int = 50;
    var HeroWidth:Int = 25;
    var HeroColor:FlxColor = 0xFF15A3BD;
    var MaxSpeed:Int = 300;
    var MinSpeed:Int = -300;

    public function new(X:Float=0, Y:Float=0)
    {
        super(X, Y);
        super.makeGraphic(HeroWidth, HeroHeight, HeroColor);
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
        
        // Accelerate until max speed is reached
        if(FlxG.keys.pressed.UP)
        {
            if(this.velocity.y >= MinSpeed)
            {
                this.velocity.y -= 10;
            }
            
        }

        if(FlxG.keys.pressed.DOWN)
        {
            if(this.velocity.y <= MaxSpeed)
            {
                this.velocity.y += 10;
            }
        }
        trace(this.velocity.y);

        if(FlxG.keys.pressed.LEFT)
        {
            if(this.velocity.x >= MinSpeed)
            {
                this.velocity.x -= 10;
            }
        }
       
        if(FlxG.keys.pressed.RIGHT)
        {
            if(this.velocity.x <= MaxSpeed)
            {
                this.velocity.x += 10;
            }
        }

        // Decelerate if necessary
        if(this.velocity.y > 0)
        {
            this.velocity.y -= 5;
        }
        if(this.velocity.y < 0)
        {
            this.velocity.y += 5;
        }
        if(this.velocity.x > 0)
        {
            this.velocity.x -= 5;
        }
        if(this.velocity.x < 0)
        {
            this.velocity.x += 5;
        }
        super.update(elapsed);
    }
}