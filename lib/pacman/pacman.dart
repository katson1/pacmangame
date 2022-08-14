import 'package:bonfire/bonfire.dart';
import 'package:pacmangame/main.dart';
import 'package:pacmangame/pacman/pacman_sprite.dart';

class Pacman extends SimplePlayer with ObjectCollision{
  Pacman():super(
    position: Vector2(
        tileSize * 5,
        tileSize * 5 ),
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
              CollisionArea.rectangle(
                  size: Vector2(32,30),
                  align: Vector2(0,0)
              ),
            ],
       ),
    );
  }
}