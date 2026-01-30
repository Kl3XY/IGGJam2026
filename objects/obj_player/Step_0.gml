switch(activeState) {
	case player.normal:
		player_normal();
	break;
	case player.ghost:
		player_ghost();
	break;
}