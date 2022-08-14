import 'package:bonfire/bonfire.dart';

class GhostSprite {
  static Future<SpriteAnimation> _sequenceImage(
      String fileName,
      String color,
      {
        int amount = 2,
      }) {
    return SpriteAnimation.load(
        'ghost/$color/ghost-$color-$fileName',
        SpriteAnimationData.sequenced(
            amount: amount,
            stepTime: 0.10,
            textureSize: Vector2(16, 15),
            texturePosition: Vector2(0, 0))
    );
  }

  //RUN RED
  static Future<SpriteAnimation> get runRightRed =>
      _sequenceImage('right.png','red');
  static Future<SpriteAnimation> get runLeftRed =>
      _sequenceImage('left.png','red');
  static Future<SpriteAnimation> get runBotRed =>
      _sequenceImage('bot.png','red');
  static Future<SpriteAnimation> get runTopRed =>
      _sequenceImage('top.png','red');
  //IDLE RED
  static Future<SpriteAnimation> get idleRightRed =>
      _sequenceImage('right.png','red' , amount: 1);
  static Future<SpriteAnimation> get idleLeftRed =>
      _sequenceImage('left.png','red' , amount: 1);
  static Future<SpriteAnimation> get idleTopRed =>
      _sequenceImage('top.png','red' , amount: 1);
  static Future<SpriteAnimation> get idleBotRed =>
      _sequenceImage('bot.png','red' , amount: 1);

  //RUN YELLOW
  static Future<SpriteAnimation> get runRightYellow =>
      _sequenceImage('right.png', 'yellow');
  static Future<SpriteAnimation> get runLeftYellow =>
      _sequenceImage('left.png', 'yellow');
  static Future<SpriteAnimation> get runBotYellow =>
      _sequenceImage('bot.png', 'yellow');
  static Future<SpriteAnimation> get runTopYellow =>
      _sequenceImage('top.png', 'yellow');
  //IDLE YELLOW
  static Future<SpriteAnimation> get idleRightYellow =>
      _sequenceImage('right.png' , 'yellow' , amount: 1);
  static Future<SpriteAnimation> get idleLeftYellow =>
      _sequenceImage('left.png', 'yellow', amount: 1);
  static Future<SpriteAnimation> get idleTopYellow =>
      _sequenceImage('top.png', 'yellow', amount: 1);
  static Future<SpriteAnimation> get idleBotYellow =>
      _sequenceImage('bot.png', 'yellow', amount: 1);

  //RUN BLUE
  static Future<SpriteAnimation> get runRightBlue =>
      _sequenceImage('right.png','blue');
  static Future<SpriteAnimation> get runLeftBlue =>
      _sequenceImage('left.png','blue');
  static Future<SpriteAnimation> get runBotBlue =>
      _sequenceImage('bot.png','blue');
  static Future<SpriteAnimation> get runTopBlue =>
      _sequenceImage('top.png','blue');
  //IDLE BLUE
  static Future<SpriteAnimation> get idleRightBlue =>
      _sequenceImage('right.png', 'blue', amount: 1);
  static Future<SpriteAnimation> get idleLeftBlue =>
      _sequenceImage('left.png', 'blue',amount: 1);
  static Future<SpriteAnimation> get idleTopBlue =>
      _sequenceImage('top.png', 'blue',amount: 1);
  static Future<SpriteAnimation> get idleBotBlue =>
      _sequenceImage('bot.png', 'blue',amount: 1);

  //RUN PINK
  static Future<SpriteAnimation> get runRightPink =>
      _sequenceImage('right.png','pink');
  static Future<SpriteAnimation> get runLeftPink =>
      _sequenceImage('left.png','pink');
  static Future<SpriteAnimation> get runBotPink =>
      _sequenceImage('bot.png','pink');
  static Future<SpriteAnimation> get runTopPink =>
      _sequenceImage('top.png','pink');
  //IDLE PINK
  static Future<SpriteAnimation> get idleRightPink =>
      _sequenceImage('right.png','pink', amount: 1);
  static Future<SpriteAnimation> get idleLeftPink =>
      _sequenceImage('left.png','pink', amount: 1);
  static Future<SpriteAnimation> get idleTopPink =>
      _sequenceImage('top.png','pink', amount: 1);
  static Future<SpriteAnimation> get idleBotPink =>
      _sequenceImage('bot.png','pink', amount: 1);
}