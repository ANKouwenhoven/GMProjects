///scrEnemyChooseNextState();
if (alarm[0] <= 0) {
    state = choose(scrEnemyWanderState, scrEnemyIdleState);
    alarm[0] = room_speed*irandom_range(2, 4);
    targetx = random(room_width);
    targety = random(room_height);
    }