#include "globals.hpp"

true call X11_fnc_debug;
true call X11_fnc_sync;

LSTART("INIT SERVER");

call X11_fnc_initPromise;
call X11_fnc_initEventsServer;

SLOG("server initialized");

LEND("INIT SERVER");

