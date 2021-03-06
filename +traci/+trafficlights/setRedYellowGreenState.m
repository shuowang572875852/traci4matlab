function setRedYellowGreenState(tlsID, state)
%setRedYellowGreenState Set the state of the traffic lights.
%   setRedYellowGreenState(TLSID,STATE) Sets the named tl's state as a 
%   string of light definitions from rRgGyYoO, for red, green, yellow, off, 
%   where lower case letters mean that the stream has to decelerate. 

%   Copyright 2019 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: setRedYellowGreenState.m 48 2018-12-26 15:35:20Z afacostag $

import traci.constants
traci.sendStringCmd(constants.CMD_SET_TL_VARIABLE,...
    constants.TL_RED_YELLOW_GREEN_STATE, tlsID, state);