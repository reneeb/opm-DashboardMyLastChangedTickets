# --
# Kernel/Language/de_DashboardMyLastChangedTickets.pm - the German translation of DashboardMyLastChangedTickets
# Copyright (C) 2015 - 2016 Perl-Services, http://www.perl-services.de
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::de_DashboardMyLastChangedTickets;

use strict;
use warnings;

use utf8;

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation} || {};

    # Custom/Kernel/Output/HTML/Dashboard/MyLastChangedTickets.pm
    $Lang->{'Shown Tickets'} = 'Gezeigte Tickets';

    # Custom/Kernel/Output/HTML/Templates/Standard/AgentDashboardMyLastChangedTickets.tt
    $Lang->{'Refresh'} = 'Aktualisieren';
    $Lang->{'No tickets found.'} = '';

    # Kernel/Config/Files/DasboardMyLastChangedTickets.xml
    $Lang->{'MyLastChangedTickets dashboard widget.'} = '';
    $Lang->{'My last changed tickets'} = 'Meine zuletzt bearbeiteten Tickets';
    $Lang->{'Defines the number of tickets shown in the widget.'} = '';
    $Lang->{'Shows a link to refresh the widget (needs free add-on \'CallDashboardElement\').'} = '';
    $Lang->{'List of JS files to always be loaded for the agent interface.'} =
        'Liste der JavaScript-Dateien, die immer im Agenten-Interface geladen werden sollen.';
}

1;
