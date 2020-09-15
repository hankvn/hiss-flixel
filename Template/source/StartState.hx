import flixel.FlxState;
import flixel.FlxGame;
import flixel.FlxG;
import flixel.FlxSprite;

import flixel.text.FlxText;

import flixel.ui.FlxButton;

import hiss.CCInterp;
import hiss.StaticFiles;

import HissState;

class StartState extends FlxState {
    public override function create():Void
    {
        super.create();
        
        // TODO put up a loading screen -- make the asset/animation part of the template

        var interp = new CCInterp();

        // flixel
        interp.importClass(FlxState, "FlxState");
        interp.importClass(FlxGame, "FlxGame");
        interp.importClass(FlxG, "FlxG");
        interp.importClass(FlxSprite, "FlxSprite");

        // flixel.text
        interp.importClass(FlxText, "FlxText");

        // flixel.ui
        interp.importClass(FlxButton, "FlxButton");

        // flixel.util
        interp.importClass(HissFlxColor, "FlxColor");

        // HissFlixel
        interp.importClass(HissFlxG, "HissFlxG");
        interp.importClass(HissState, "HissState");

        StaticFiles.compileWithAll("lib");
        for (libFile in StaticFiles.getDirectoryFiles("lib")) {
            interp.load(libFile);
        }

        // Game source
        StaticFiles.compileWithAll("game");
        interp.load("game/main.hiss");
    }
}