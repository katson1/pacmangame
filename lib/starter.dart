import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacmangame/food/food.dart';
import 'package:pacmangame/ghost/ghost.dart';
import 'package:pacmangame/pacman/pacman.dart';
import 'main.dart';

int score = 0;

class Starter extends StatefulWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[BonfireTiledWidget(
        map: TiledWorldMap(
          'maps/mapa.json',
          forceTileSize: const Size(tileSize, tileSize),
        ),
        player: Pacman(),
        joystick: Joystick(
          keyboardConfig: KeyboardConfig(
            keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows,
          ),
        ),
        showCollisionArea: false,
        components: [
          Ghost(position: Vector2(415, 192), color: 'red'),
          Ghost(position: Vector2(515, 192), color: 'blue'),
          Ghost(position: Vector2(516, 238), color: 'yellow'),
          Ghost(position: Vector2(415, 238), color: 'pink'),
          Food(position: Vector2(40,40)),
          Food(position: Vector2(130,40)),
          Food(position: Vector2(200,40)),
          Food(position: Vector2(360,40)),
          Food(position: Vector2(520,40)),
          Food(position: Vector2(640,40)),
          Food(position: Vector2(330,330)),
          Food(position: Vector2(640,330)),
          Food(position: Vector2(130,330)),
          Food(position: Vector2(810,40)),
          Food(position: Vector2(900,40)),
          Food(position: Vector2(900,580)),
          Food(position: Vector2(810,580)),
          Food(position: Vector2(740,580)),
          Food(position: Vector2(640,580)),
          Food(position: Vector2(520,580)),
          Food(position: Vector2(40,580)),
          Food(position: Vector2(130,580)),
          Food(position: Vector2(200,580)),
          Food(position: Vector2(360,580)),
          Food(position: Vector2(40,40)),
          Food(position: Vector2(40,200)),
          Food(position: Vector2(40,360)),
          Food(position: Vector2(40,580)),
        ],
      ), Text('Score: ')
      ],
    );
  }
}
