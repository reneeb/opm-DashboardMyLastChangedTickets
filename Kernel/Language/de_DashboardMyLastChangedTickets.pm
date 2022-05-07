# --
# Kernel/Language/de_DashboardMyLastChangedTickets.pm - the German translation of DashboardMyLastChangedTickets
# Copyright (C) 2015 - 2022 Perl-Services, https://www.perl-services.de
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
    $Lang->{'No tickets found.'} = 'Keine Tickets gefunden.';

    # Kernel/Config/Files/DasboardMyLastChangedTickets.xml
    $Lang->{'MyLastChangedTickets dashboard widget.'} = 'MyLastChangedTickets Dashboardwidget';
    $Lang->{'My last changed tickets'} = 'Meine zuletzt bearbeiteten Tickets';
    $Lang->{'Defines the number of tickets shown in the widget.'} = 'Definiert die Anzahl der gezeigten Tickets im Widget.';
    $Lang->{'Shows a link to refresh the widget (needs free add-on \'CallDashboardElement\').'} = 'Zeigt einen Link um das Widget neu zu laden (benötigt das freie Addon \'CallDashboardElement\').';
    $Lang->{'List of JS files to always be loaded for the agent interface.'} =
        'Liste der JavaScript-Dateien, die immer im Agenten-Interface geladen werden sollen.';
}

1;
