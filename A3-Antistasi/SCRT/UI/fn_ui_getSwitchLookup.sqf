
params ["_table", "_idc"];
_return = [];	
switch (_table) do {
    case "MAIN": {
        switch (_idc) do {
            case 5100: {
                _return pushBack "musicON";
                _return pushBack musicON;
                _return pushBack ["ENABLED", "DISABLED"];
            };
            case 5200: {
                _return pushBack "isProjectileCamEnabled";
                _return pushBack isProjectileCamEnabled;
                _return pushBack ["ENABLED", "DISABLED"];
            };
            case 5400: {
                _return pushBack "isPlayerParadropable";
                _return pushBack isPlayerParadropable;
                _return pushBack ["ENABLED", "DISABLED"];
            };
        };			
    };
};
_return