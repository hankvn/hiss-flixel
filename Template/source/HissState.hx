package;

import haxe.Constraints.Function;

import flixel.FlxState;

import hiss.CCInterp;

class HissState extends FlxState
{
	var _create: Function;
	var _update: Function;
	var _draw: Function;

	public function new (create: Function, update: Function, draw: Function) {
		super();

		_create = create;
		_update = update;
		_draw = draw;
	}

	public override function create():Void
	{
		super.create();

		_create(this);
	}

	public override function update(elapsed:Float):Void
	{
		super.update(elapsed);

		_update(this, elapsed);
	}

	public override function draw():Void {
		super.draw();

		_draw(this);
	}

}
