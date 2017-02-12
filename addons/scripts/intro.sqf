/*
	intro.sqf | A simple intro script with some music and text - moviestyle! yo!
	
    Author: Firsty (C) 2016

*/

// Triggers the audio "class CfgMusic" from description.ext
[] spawn {
	playMusic "NoEliteIntro";
};
// Loading text on black background
	titleCut ["", "BLACK FADED", 999];
[] Spawn {
	titleText ["_noelite_gaming_presents_","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleText ["_a_a3_wasteland_tanoa_edition_","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleText ["_by_firsty_","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleText ["_www.noelite.no_","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleCut ["", "BLACK IN", 5];
	};
	
// Messages shown ingame on the right "storytelling"
private ["_messages", "_timeout"];

_messages = [
	["2017!! The year of joy", (name player)],
	["", "Simple rules will follow:"],
	["", "You hack, exploit or cheat - you get cancer"],
	["", "Please report all sorts of hacking/abuse/troll directly to an admin online (Firsty, GreensKeeper or Asbonia) or to admin@noelite(dot)no"],
	["", "You fuck around with anyones base or hack as above, you also get banned permanently besides the cancer."],
	["", "Have fun! And don't stay up too late!"],
	["", "This is a friendly server.. not a hardcore PvP, you're looking for that, go play GrandTheftAuto"],
	["", "Eeeveryones happy :) Take care! And see you on the flipside! -Firsty"]
];

_timeout = 5;
{
	private ["_title", "_content", "_titleText"];
	uiSleep 2;
	_title = _x select 0;
	_content = _x select 1;
	_titleText = format[("<t font='TahomaB' size='0.40' color='#FFFFFF' align='left' shadow='1' shadowColor='#000000'>%1</t><br /><t shadow='1'shadowColor='#000000' font='TahomaB' size='0.60' color='#FFFFFF' align='left'>%2</t>"), _title, _content];
	[_titleText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_timeout,0.5] spawn BIS_fnc_dynamicText;
	uiSleep (_timeout * 1.1);
} forEach _messages;