package;

using StringTools;

import flixel.FlxGame;
import flixel.FlxG;
import openfl.display.Sprite;

import hiss.StaticFiles;

import StartState;

class Main extends Sprite
{
	public function new()
	{
		super();

		StaticFiles.compileWith("init-args.txt");
		var constructorArgs = StaticFiles.getContent("init-args.txt");
		var constructorArgs = constructorArgs.split("\n");
		var constructorArgs = [for (line in constructorArgs) line.split('//')[0].trim()];
		switch (constructorArgs) {
			case [width, height, zoom, updateFrameRate, drawFrameRate, skipSplashScreen, startFullscreen]:
			addChild(new FlxGame(
					Std.parseInt(width),
					Std.parseInt(height),
					StartState,
					Std.parseFloat(zoom),
					Std.parseInt(updateFrameRate),
					Std.parseInt(drawFrameRate),
					Std.parseFloat(skipSplashScreen) != 0,
					Std.parseFloat(startFullscreen) != 0));
			default:
				throw "init-args.txt must contain all the args given in the default template.";
		}
	}
}
