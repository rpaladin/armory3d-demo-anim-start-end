package arm;
import iron.Trait;
import iron.Scene;
import iron.system.Input;
class MyTrait extends Trait {
	var blendTime = 0.25;
	var speed = 1.0;
	var loop = true;
	public function new() {
		super();
		notifyOnInit(function() {
			Scene.active.getChild("Suzanne_1").animation.play("object", 0, 59, blendTime, speed, loop);
			Scene.active.getChild("Suzanne_2").animation.play("object", 61, 120, blendTime, speed, loop);
			Scene.active.getChild("Suzanne_3").animation.play("object", 121, 181, blendTime, speed, loop);
			Scene.active.getChild("Suzanne_4").animation.play("bone", 0, 59, blendTime, speed, loop);
			Scene.active.getChild("Suzanne_5").animation.play("bone", 61, 120, blendTime, speed, loop);
			Scene.active.getChild("Suzanne_6").animation.play("bone", 122, 181, blendTime, speed, loop);
			// for (o in Scene.active.getChildren(true)) if (o.animation != null) trace(o.name);
			// trace(Scene.active.getChild("Suzanne_6").animation.animEnd);
		});
		// notifyOnUpdate(function() {
		// 	trace(Scene.active.getChild("Suzanne_6").animation.currentFrame());
		// });
	}
}