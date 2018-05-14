///scrCheckForPlayer();
if (instance_exists(objPlayer)) {
    var dis = point_distance(x, y, objPlayer.x, objPlayer.y);
    if (dis < sight) {
        state = scrEnemyChaseState;
        targetx = objPlayer.x;
        targety = objPlayer.y;
    } else {
        scrEnemyChooseNextState();
    }
} else {
    scrEnemyChooseNextState();
}