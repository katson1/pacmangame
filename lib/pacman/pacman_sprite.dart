import 'package:bonfire/bonfire.dart';

class PacManSprite {
  static Future<SpriteAnimation> _sequenceImage(
      String fileName, {
        int amount = 3,
      }) {
    return SpriteAnimation.load(
        'pacman/$fileName',
        SpriteAnimationData.sequenced(
            amount: amount,
            stepTime: 0.09,
            textureSize: Vector2(15, 15),
            texturePosition: Vector2(0, 0))
    );
  }

  //RUN
  static Future<SpriteAnimation> get runRight =>
      _sequenceImage('pacman-right.png');
  static Future<SpriteAnimation> get runLeft =>
      _sequenceImage('pacman-left.png');
  static Future<SpriteAnimation> get runBot =>
      _sequenceImage('pacman-bot.png');
  static Future<SpriteAnimation> get runTop =>
      _sequenceImage('pacman-top.png');
  //IDLE
    static Future<SpriteAnimation> get idleRight =>
      _sequenceImage('pacman-idleright.png', amount: 1);
    static Future<SpriteAnimation> get idleLeft =>
      _sequenceImage('pacman-idleleft.png', amount: 1);
  static Future<SpriteAnimation> get idleTop =>
      _sequenceImage('pacman-idletop.png', amount: 1);
  static Future<SpriteAnimation> get idleBot =>
      _sequenceImage('pacman-idlebot.png', amount: 1);

}