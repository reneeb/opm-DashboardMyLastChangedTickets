// --
// PS.MyLastChangedTickets.js - xxxxx
// Copyright (C) 2015 Perl-Services.de, http://perl-services.de
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

var PS = PS || {};

/**
 * @namespace
 * @exports TargetNS as PS.MyLastChangedTickets
 * @description
 *      This namespace contains the special module functions for the search.
 */
PS.MyLastChangedTickets = (function (TargetNS) {

    TargetNS.RefreshMylastchangetickets = function() {
        $('#mylastchangedtickets-spinner').addClass('AJAXLoader');
        $.ajax({
            type: 'get',
            url:  Core.Config.Get('Baselink') + 'Action=AgentCallDashboardElement&Subaction=Element&Name=0322-MyLastChangedTickets',
            success: function(response) {
                $('#mylastchangedtickets-data').replaceWith( response );
                $('#mylastchangedtickets-spinner').removeClass('AJAXLoader');
            }
        });
    };

    return TargetNS;
}(PS.MyLastChangedTickets || {}));
