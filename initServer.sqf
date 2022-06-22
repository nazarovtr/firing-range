allTargets = nearestObjects [skull, ["TargetP_Inf_F", "TargetP_Inf_Acc2_F"], 2000];
{
    _x setPos (getPos _x vectorAdd [0,0,-0.3]);
    if ("TargetP_Inf_Acc2_F" == typeOf _x) then {
     _x setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0.4,0,0,1)"];
    };
    _x addMPEventHandler  ["MPHit", {
        params ["_unit", "_causedBy", "_damage", "_instigator"];
        _distance = 5 * round ((_unit distance _instigator) / 5);
        systemChat ((name _instigator) + ": " + str (_distance) + " m");
    }];
} forEach allTargets;
headshotMode = false;
publicVariable "headshotMode";
"headshotMode" addPublicVariableEventHandler {
    call toggleHeadshotMode;
};
