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
        Ghost(position: Vector2(415, 192), color: 'red'),
        Ghost(position: Vector2(515, 192), color: 'blue'),
        Ghost(position: Vector2(516, 238), color: 'yellow'),
        Ghost(position: Vector2(415, 238), color: 'pink'),
      ],
    );
  }
}
