// In map template description.ext use:
// #include "MissionDescription\master.hpp"
// Whether order should be maintained is unknown.
#include "..\defines.hpp"
#include "..\UI\commanderMenu.hpp"
#include "..\UI\workshop.hpp"
#include "..\UI\playerMenu.hpp"
#include "..\UI\menu.hpp"
#include "..\Garage\Dialogs.hpp"

author = $STR_antistasi_credits_generic_author_text;
Keys[] = {"A3-Antistasi-is-not-available-in-single-player"};
KeysLimit = 2;  // Even if player tampers with his unlocked keys, this will never become true.

#include "..\MagRepack\MagRepack_config.hpp"

#define HALs_DEF_INIT
	#include "..\HALs\Addons\main\config.hpp"
#undef HALs_DEF_INIT

#include "debug.hpp"
#include "gameSettings.hpp"
#include "params.hpp"
#include "CfgIdentities.hpp"
#include "CfgRemoteExec.hpp"
