enableSaving [false, false];
toggleHeadshotMode = {
     {
        if (headshotMode && ((getPos _x) select 2 > -1)) then {
          _x setPos (getPos _x vectorAdd [0,0,-1.1]);
        };
        if (!headshotMode && ((getPos _x) select 2 < -1)) then {
          _x setPos (getPos _x vectorAdd [0,0,1.1]);
        };
     } forEach allTargets;
};
