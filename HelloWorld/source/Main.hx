package;

import flixel.FlxGame;
import flixel.FlxG;
import openfl.display.Sprite;

import hiss.HissRepl;

import HissState;

class Main extends Sprite
{
	public static var hiss: HissRepl;

	public function new()
	{
		super();

		hiss = new HissRepl();

		hiss.interp.importClass(FlxG);
		hiss.interp.importClass(FlxGame);
		hiss.interp.importClass(HissState);
		hiss.interp.importObject("_main", this);
		hiss.load("source/main.hiss");
	}
}
