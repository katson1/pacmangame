import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacmangame/ghost/ghost.dart';
import 'package:pacmangame/pacman/pacman.dart';

import 'main.dart';

class Starter extends StatefulWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
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
        Ghost(position: Vector2(445, 200), color: 'red'),
        Ghost(position: Vector2(478, 240), color: 'blue'),
        Ghost(position: Vector2(478, 200), color: 'yellow'),
        Ghost(position: Vector2(445, 240), color: 'pink'),
      ],
    );
  }
}
