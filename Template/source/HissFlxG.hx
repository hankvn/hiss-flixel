import flixel.FlxG;

class HissFlxG {
    public static function setMouseVisible(visible: Bool) {
        #if MOUSE
        FlxG.mouse.visible = visible;
        #end
    }
}