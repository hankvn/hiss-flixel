import flixel.FlxState;
import flixel.FlxGame;
import flixel.FlxG;
import flixel.text.FlxText;
import openfl.display.Sprite;

import hiss.CCInterp;
import hiss.StaticFiles;

import HissState;

class StartState extends FlxState {
    public override function create():Void
    {
        super.create();
        
        // TODO put up a loading screen -- make the asset/animation part of the template

        var interp = new CCInterp();
        interp.importClass(FlxState, "FlxState");
        interp.importClass(FlxGame, "FlxGame");
        interp.importClass(FlxG, "FlxG");
        interp.importClass(FlxText, "FlxText");
        interp.importClass(Sprite, "Sprite");

        interp.importClass(HissState, "HissState");

        StaticFiles.compileWith("main.hiss");
        interp.load("main.hiss");
    }
}