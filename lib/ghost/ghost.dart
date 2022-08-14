import 'package:bonfire/bonfire.dart';
import 'package:pacmangame/ghost/ghost_sprite.dart';

class Ghost extends SimpleEnemy with ObjectCollision {
  Ghost({
    required Vector2 position,
    required String color,
  }) : super(
    position: position,
    size: Vector2(32, 32),
    speed: 50,
    animation: getSDA(color),
    life: 50,
  ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(20, 20),
            align: Vector2(6, 15),
          ),
        ],
      ),
    );
  }
}

SimpleDirectionAnimation getSDA (String color){

  switch (color) {
    case 'red':
      {
        return SimpleDirectionAnimation(
          idleRight: GhostSprite.idleRightRed,
          idleLeft: GhostSprite.idleLeftRed,
          idleDown: GhostSprite.idleBotRed,
          idleUp: GhostSprite.idleBotRed,
          runRight: GhostSprite.runRightRed,
          runLeft: GhostSprite.runLeftRed,
          runUp: GhostSprite.runTopRed,
          runDown: GhostSprite.runBotRed,
        );
      }

    case 'blue':
      {
        return SimpleDirectionAnimation(
          idleRight: GhostSprite.idleRightBlue,
          idleLeft: GhostSprite.idleLeftBlue,
          idleDown: GhostSprite.idleBotBlue,
          idleUp: GhostSprite.idleBotBlue,
          runRight: GhostSprite.runRightBlue,
          runLeft: GhostSprite.runLeftBlue,
          runUp: GhostSprite.runTopBlue,
          runDown: GhostSprite.runBotBlue,
        );
      }
    case 'yellow':
      {
        return SimpleDirectionAnimation(
          idleRight: GhostSprite.idleRightYellow,
          idleLeft: GhostSprite.idleLeftYellow,
          idleDown: GhostSprite.idleBotYellow,
          idleUp: GhostSprite.idleBotYellow,
          runRight: GhostSprite.runRightYellow,
          runLeft: GhostSprite.runLeftYellow,
          runUp: GhostSprite.runTopYellow,
          runDown: GhostSprite.runBotYellow,
        );
      }
    case 'pink':
      {
        return SimpleDirectionAnimation(
          idleRight: GhostSprite.idleRightPink,
          idleLeft: GhostSprite.idleLeftPink,
          idleDown: GhostSprite.idleBotPink,
          idleUp: GhostSprite.idleBotPink,
          runRight: GhostSprite.runRightPink,
          runLeft: GhostSprite.runLeftPink,
          runUp: GhostSprite.runTopPink,
          runDown: GhostSprite.runBotPink,
        );
      }
    default:{
      return SimpleDirectionAnimation(
        idleRight: GhostSprite.idleRightRed,
        idleLeft: GhostSprite.idleLeftRed,
        idleDown: GhostSprite.idleBotRed,
        idleUp: GhostSprite.idleBotRed,
        runRight: GhostSprite.runRightRed,
        runLeft: GhostSprite.runLeftRed,
        runUp: GhostSprite.runTopRed,
        runDown: GhostSprite.runBotRed,
      );
    }
  }
}
