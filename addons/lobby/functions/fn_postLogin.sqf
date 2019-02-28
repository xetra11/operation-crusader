#include "script_component.hpp"
/*
 * Author: xetra11
 *
 * This function will be called upon every character selection/login. It's logic will try to spawn the player at the
 * position he was logging out before and restoring his loadout.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Public: No
 *
 * Scope: Client
 */

private _oldPos = player getVariable [COOPR_KEY_POSITION, []];
private _loadout = player getVariable [COOPR_KEY_LOADOUT, []];

DEBUG("post login init...");

// check if player has an old position if not spawn to hq asap
if(_oldPos isEqualTo []) then {
   call coopr_fnc_spawnAtOldPosition;
} else {
   DEBUG("player position could not be revoked after login");
   player setPos getPos COOPR_HQ_WEST;
};

if (count _loadout isEqualTo 0) then {
    ERROR("player loadout could not be revoked after login")
} else {
    player setUnitLoadout _loadout;
};

// temporary workaround until health persistence is implemented
if(call coopr_fnc_isACE3Active) then {
    [objNull, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
};

cutText ["", "BLACK IN", 0.1];

call coopr_fnc_initEventsClient;
call coopr_fnc_initEventsRoutines;
call coopr_fnc_addPlayerActions;

DEBUG("...post login init done");
