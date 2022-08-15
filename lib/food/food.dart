import 'package:bonfire/bonfire.dart';
import 'package:pacmangame/starter.dart';
import '../main.dart';

class Food extends GameDecoration with ObjectCollision{
  Food({required Vector2 position})
      : super.withAnimation(animation:
      SpriteAnimation.load(
      'food/food.png',
          SpriteAnimationData.sequenced(
              amount: 1,
              stepTime: 1,
              textureSize:
              Vector2(16,16))),
      position: position,
      size: Vector2(25,25))
    {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.circle(
            radius: 15,
            align: Vector2(3, 3),
          ),
        ],
      ),
    );
  }

  @override
  void update(double dt) {
    // do anything
    super.update(dt);
  }

  @override
  bool onCollision(GameComponent component, bool active) {

    if(component is Player){
      this.position = Vector2(9999, 9999);
    }

    return super.onCollision(component, active);
  }


}