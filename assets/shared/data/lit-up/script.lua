function onCreate()
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'pico-dead')
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pico')
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameplay/gameover/gameOver-pico')
	setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameplay/gameover/gameOverEnd-pico')
	setPropertyFromClass('substates.PauseSubState', 'songName', 'breakfast-pico/breakfast-pico')
end