import 'package:bonfire/bonfire.dart';
import 'package:pacmangame/food/food.dart';
import 'package:pacmangame/ghost/ghost.dart';
import 'package:pacmangame/main.dart';
import 'package:pacmangame/pacman/pacman_sprite.dart';

class Pacman extends SimplePlayer with ObjectCollision{
  Pacman():super(
    position: Vector2(460,575),
    size: Vector2(
        tileSize,
        tileSize),
    animation: SimpleDirectionAnimation(
      idleRight: PacManSprite.idleRight,
      runRight: PacManSprite.runRight,
      idleLeft: PacManSprite.idleLeft,
      runLeft: PacManSprite.runLeft,
      idleUp: PacManSprite.idleTop,
      runUp: PacManSprite.runTop,
      idleDown: PacManSprite.idleBot,
      runDown: PacManSprite.runBot,
    ),
  ){
    setupCollision(
        CollisionConfig(
            collisions: [
              CollisionArea.circle(radius: 15.1,
                  align: Vector2(0,0)
              ),
            ],
       ),
    );
  }
  
  @override
  void update(double dt) {

    super.update(dt);
  }

  @override
  bool onCollision(GameComponent component, bool active) {

    if(component is Ghost){
      die();
    }

    return super.onCollision(component, active);
  }

  @override
  void die() async {
    super.die();
  }
}