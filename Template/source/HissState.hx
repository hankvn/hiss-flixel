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
		_create(this);

		super.create();
	}

	public override function update(elapsed:Float):Void
	{
		_update(this, elapsed);

		super.update(elapsed);
	}

	public override function draw():Void {
		_draw(this);

		super.draw();
	}

}
