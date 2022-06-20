skull addAction ["Headshot mode", {
    headshotMode = ! headshotMode;
    if (isServer) then {
        publicVariableServer "headshotMode";
    };
    publicVariable "headshotMode";
    if (!isMultiplayer) then {
        call toggleHeadshotMode;
    };
}];