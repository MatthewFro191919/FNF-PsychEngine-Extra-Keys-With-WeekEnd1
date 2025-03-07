local abotBeatRandom1 = 1
local abotBeatRandom2 = 1
local abotBeatRandom3 = 1
local abotBeatRandom4 = 1
local abotBeatRandom5 = 1
local abotBeatRandom6 = 1
local abotBeatRandom7 = 1
local health = 1
local abotEyes = 0
local viz1Value = 1
local viz2Value = 1
local viz3Value = 1
local viz4Value = 1
local viz5Value = 1
local viz6Value = 1
local viz7Value = 1
local knifeUp = false

function onCreate()

	makeLuaSprite('abotEyeBack', 'empty', getProperty('gf.x') -80, getProperty('gf.y') +550);
	makeGraphic('abotEyeBack', 110, 70, 'FFFFFF');

	makeFlxAnimateSprite('abotEyes', getProperty('gf.x') -76, getProperty('gf.y') +550, 'characters/abot/systemEyes')
	addAnimationBySymbolIndices('abotEyes', 'l', 'a bot eyes lookin', {0, 1, 2, 3, 10, 11, 12, 13}, 24, false)
	addAnimationBySymbolIndices('abotEyes', 'r', 'a bot eyes lookin', {13, 12, 11, 10, 3, 2, 1, 0}, 24, false)

	makeLuaSprite('abotBG', 'characters/abot/stereoBG', getProperty('gf.x') +18, getProperty('gf.y') +318);
	scaleObject('abotBG', 1.05, 1.05);

	makeAnimatedLuaSprite('abotViz1', 'aBotViz', getProperty('gf.x') +66, getProperty('gf.y') +390);
	addAnimationByIndices('abotViz1', 'viz6', 'viz1', {0}, 24, false);
	addAnimationByIndices('abotViz1', 'viz5', 'viz1', {1}, 24, false);
	addAnimationByIndices('abotViz1', 'viz4', 'viz1', {2}, 24, false);
	addAnimationByIndices('abotViz1', 'viz3', 'viz1', {3}, 24, false);
	addAnimationByIndices('abotViz1', 'viz2', 'viz1', {4}, 24, false);
	addAnimationByIndices('abotViz1', 'viz1', 'viz1', {5}, 24, false);
	setProperty('abotViz1.flipX', false);
	scaleObject('abotViz1', 1, 1);

	makeAnimatedLuaSprite('abotViz2', 'aBotViz', getProperty('gf.x') +128, getProperty('gf.y') +383);
	addAnimationByIndices('abotViz2', 'viz6', 'viz2', {0}, 24, false);
	addAnimationByIndices('abotViz2', 'viz5', 'viz2', {1}, 24, false);
	addAnimationByIndices('abotViz2', 'viz4', 'viz2', {2}, 24, false);
	addAnimationByIndices('abotViz2', 'viz3', 'viz2', {3}, 24, false);
	addAnimationByIndices('abotViz2', 'viz2', 'viz2', {4}, 24, false);
	addAnimationByIndices('abotViz2', 'viz1', 'viz2', {5}, 24, false);
	setProperty('abotViz2.flipX', false);
	scaleObject('abotViz2', 1, 1);

	makeAnimatedLuaSprite('abotViz3', 'aBotViz', getProperty('gf.x') +185, getProperty('gf.y') +380);
	addAnimationByIndices('abotViz3', 'viz6', 'viz3', {0}, 24, false);
	addAnimationByIndices('abotViz3', 'viz5', 'viz3', {1}, 24, false);
	addAnimationByIndices('abotViz3', 'viz4', 'viz3', {2}, 24, false);
	addAnimationByIndices('abotViz3', 'viz3', 'viz3', {3}, 24, false);
	addAnimationByIndices('abotViz3', 'viz2', 'viz3', {4}, 24, false);
	addAnimationByIndices('abotViz3', 'viz1', 'viz3', {5}, 24, false);
	setProperty('abotViz3.flipX', false);
	scaleObject('abotViz3', 1, 1);

	makeAnimatedLuaSprite('abotViz4', 'aBotViz', getProperty('gf.x') +251, getProperty('gf.y') +380);
	addAnimationByIndices('abotViz4', 'viz6', 'viz4', {0}, 24, false);
	addAnimationByIndices('abotViz4', 'viz5', 'viz4', {1}, 24, false);
	addAnimationByIndices('abotViz4', 'viz4', 'viz4', {2}, 24, false);
	addAnimationByIndices('abotViz4', 'viz3', 'viz4', {3}, 24, false);
	addAnimationByIndices('abotViz4', 'viz2', 'viz4', {4}, 24, false);
	addAnimationByIndices('abotViz4', 'viz1', 'viz4', {5}, 24, false);
	setProperty('abotViz4.flipX', false);
	scaleObject('abotViz4', 1, 1);

	makeAnimatedLuaSprite('abotViz5', 'aBotViz', getProperty('gf.x') +308, getProperty('gf.y') +380);
	addAnimationByIndices('abotViz5', 'viz6', 'viz5', {0}, 24, false);
	addAnimationByIndices('abotViz5', 'viz5', 'viz5', {1}, 24, false);
	addAnimationByIndices('abotViz5', 'viz4', 'viz5', {2}, 24, false);
	addAnimationByIndices('abotViz5', 'viz3', 'viz5', {3}, 24, false);
	addAnimationByIndices('abotViz5', 'viz2', 'viz5', {4}, 24, false);
	addAnimationByIndices('abotViz5', 'viz1', 'viz5', {5}, 24, false);
	setProperty('abotViz5.flipX', false);
	scaleObject('abotViz5', 1, 1);

	makeAnimatedLuaSprite('abotViz6', 'aBotViz', getProperty('gf.x') +364, getProperty('gf.y') +385);
	addAnimationByIndices('abotViz6', 'viz6', 'viz6', {0}, 24, false);
	addAnimationByIndices('abotViz6', 'viz5', 'viz6', {1}, 24, false);
	addAnimationByIndices('abotViz6', 'viz4', 'viz6', {2}, 24, false);
	addAnimationByIndices('abotViz6', 'viz3', 'viz6', {3}, 24, false);
	addAnimationByIndices('abotViz6', 'viz2', 'viz6', {4}, 24, false);
	addAnimationByIndices('abotViz6', 'viz1', 'viz6', {5}, 24, false);
	setProperty('abotViz6.flipX', false);
	scaleObject('abotViz6', 1, 1);

	makeAnimatedLuaSprite('abotViz7', 'aBotViz', getProperty('gf.x') +416, getProperty('gf.y') +393);
	addAnimationByIndices('abotViz7', 'viz6', 'viz7', {0}, 24, false);
	addAnimationByIndices('abotViz7', 'viz5', 'viz7', {1}, 24, false);
	addAnimationByIndices('abotViz7', 'viz4', 'viz7', {2}, 24, false);
	addAnimationByIndices('abotViz7', 'viz3', 'viz7', {3}, 24, false);
	addAnimationByIndices('abotViz7', 'viz2', 'viz7', {4}, 24, false);
	addAnimationByIndices('abotViz7', 'viz1', 'viz7', {5}, 24, false);
	setProperty('abotViz7.flipX', false);
	scaleObject('abotViz7', 1, 1);

	makeFlxAnimateSprite('abot', getProperty('gf.x') -133, getProperty('gf.y') +310, 'characters/abot/abotSystem')
	addAnimationBySymbolIndices('abot', 'i', 'Abot System', {0, 1, 2, 3, 4}, 24, false)
	setProperty('abot.alpha', 1);

	addLuaSprite('abotEyeBack', false);
	addLuaSprite('abotEyes', false);
	addLuaSprite('abotBG', false);
	addLuaSprite('abotViz1', false);
	addLuaSprite('abotViz2', false);
	addLuaSprite('abotViz3', false);
	addLuaSprite('abotViz4', false);
	addLuaSprite('abotViz5', false);
	addLuaSprite('abotViz6', false);
	addLuaSprite('abotViz7', false);
	addLuaSprite('abot', false);

end

function onUpdate()
	playAnim('abotViz1', 'viz'..viz1Value);
	playAnim('abotViz2', 'viz'..viz2Value); 
	playAnim('abotViz3', 'viz'..viz3Value); 
	playAnim('abotViz4', 'viz'..viz4Value); 
	playAnim('abotViz5', 'viz'..viz5Value);
	playAnim('abotViz6', 'viz'..viz6Value); 
	playAnim('abotViz7', 'viz'..viz7Value);
	if songName ~= "Blazin'" then
		if getProperty('health') <= 0.25 and not knifeUp then
			knifeUp = true
			playAnim('gf', 'raiseKnife', false);
			runTimer('raiseKnifeAnim', (1/24)*19);
			triggerEvent('Alt Idle Animation', 'gf', '-alt')
		elseif getProperty('health') >= 0.251 and knifeUp then
			knifeUp = false
			triggerEvent('Alt Idle Animation', 'gf', '')
			playAnim('gf', 'lowerKnife', false);
			setProperty('gf.specialAnim', true);
		end
	end
end

function onBeatHit()
	playAnim('abot', 'i');
	if curBeat %2 == 0 then
	end
end

function onStepHit()
	abotBeatRandom1 = getRandomInt(1,5);
	abotBeatRandom2 = getRandomInt(1,5);
	abotBeatRandom3 = getRandomInt(1,5);
	abotBeatRandom4 = getRandomInt(1,5);
	abotBeatRandom5 = getRandomInt(1,5);
	abotBeatRandom6 = getRandomInt(1,5);
	abotBeatRandom7 = getRandomInt(1,5);
	if abotBeatRandom1 <= 1 and viz1Value <= 5 then
		viz1Value = viz1Value + getRandomInt(1,2)
	elseif abotBeatRandom1 == 5 and viz1Value >= 1 or abotBeatRandom1 >= 2 and viz1Value >= 6 then
		viz1Value = viz1Value - getRandomInt(1,2)
	end
	if abotBeatRandom2 <= 1 and viz2Value <= 5 then
		viz2Value = viz2Value + getRandomInt(1,2)
	elseif abotBeatRandom2 == 5 and viz2Value >= 1 or abotBeatRandom2 >= 2 and viz2Value >= 6 then
		viz2Value = viz2Value - getRandomInt(1,2)
	end
	if abotBeatRandom3 <= 1 and viz3Value <= 5 then
		viz3Value = viz3Value + getRandomInt(1,2)
	elseif abotBeatRandom3 == 5 and viz3Value >= 1 or abotBeatRandom3 >= 2 and viz3Value >= 6 then
		viz3Value = viz3Value - getRandomInt(1,2)
	end
	if abotBeatRandom4 <= 1 and viz4Value <= 5 then
		viz4Value = viz4Value + getRandomInt(1,2)
	elseif abotBeatRandom4 == 5 and viz4Value >= 1 or abotBeatRandom4 >= 2 and viz4Value >= 6 then
		viz4Value = viz4Value - getRandomInt(1,2)
	end
	if abotBeatRandom5 <= 1 and viz5Value <= 5 then
		viz5Value = viz5Value + getRandomInt(1,2)
	elseif abotBeatRandom5 == 5 and viz5Value >= 1 or abotBeatRandom5 >= 2 and viz5Value >= 6 then
		viz5Value = viz5Value - getRandomInt(1,2)
	end
	if abotBeatRandom6 <= 1 and viz6Value <= 5 then
		viz6Value = viz6Value + getRandomInt(1,2)
	elseif abotBeatRandom6 == 5 and viz6Value >= 1 or abotBeatRandom6 >= 2 and viz6Value >= 6 then
		viz6Value = viz6Value - getRandomInt(1,2)
	end 
	if abotBeatRandom7 <= 1 and viz7Value <= 5 then
		viz7Value = viz7Value + getRandomInt(1,2)
	elseif abotBeatRandom7 == 5 and viz7Value >= 1 or abotBeatRandom7 >= 2 and viz7Value >= 6 then
		viz7Value = viz7Value - getRandomInt(1,2)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'abotEyesLeft1' and abotEyes == 1 then
		abotEyes = 0
		playAnim('abotEyes', 'l');
	end
	if tag == 'abotEyesRight1' and abotEyes == 0 then
		abotEyes = 1
		playAnim('abotEyes', 'r');
	end
end

function onMoveCamera(focus)
	if focus == 'dad' then
		runTimer('abotEyesLeft1', 0.2);
	elseif focus == 'boyfriend' or 'gf' then
		runTimer('abotEyesRight1', 0.2);
	end
end

function onEvent(name, value1, value2)
    if name == 'Focus Camera' then
        if value1 == '1' then
			runTimer('abotEyesLeft1', 0.2);
        elseif value1 == '2' or '3' then
			runTimer('abotEyesRight1', 0.2);
        end
    end
end