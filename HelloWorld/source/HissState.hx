package;

import flixel.FlxState;

import hiss.HissRepl;

class HissState extends FlxState
{
	override public function create():Void
	{
		super.create();

		Main.hiss.eval('(_create)');
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		Main.hiss.eval('(_update $elapsed)');
	}
}
