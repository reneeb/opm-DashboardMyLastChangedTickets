# --
# Kernel/Language/hu_DashboardMyLastChangedTickets.pm - the Hungarian translation of DashboardMyLastChangedTickets
# Copyright (C) 2015 - 2023 Perl-Services, https://www.perl-services.de
# Copyright (C) 2016 Balázs Úr, http://www.otrs-megoldasok.hu
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::hu_DashboardMyLastChangedTickets;

use strict;
use warnings;

use utf8;

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation} || {};

    # Custom/Kernel/Output/HTML/Dashboard/MyLastChangedTickets.pm
    $Lang->{'Shown Tickets'} = 'Megjelenített jegyek';

    # Custom/Kernel/Output/HTML/Templates/Standard/AgentDashboardMyLastChangedTickets.tt
    $Lang->{'Refresh'} = 'Frissítés';
    $Lang->{'No tickets found.'} = 'Nem találhatók jegyek.';

    # Kernel/Config/Files/DasboardMyLastChangedTickets.xml
    $Lang->{'MyLastChangedTickets dashboard widget.'} = 'A legutóbb módosított saját jegyek felületi elem.';
    $Lang->{'My last changed tickets'} = 'Legutóbb módosított saját jegyek';
    $Lang->{'Defines the number of tickets shown in the widget.'} =
        'Meghatározza a felületi elemen megjelenített jegyek számát.';
    $Lang->{'Shows a link to refresh the widget (needs free add-on \'CallDashboardElement\').'} =
        'Egy hivatkozást jelenít meg a felületi elem frissítéséhez (az ingyenes „CallDashboardElement” kiegészítő szükséges hozzá).';
    $Lang->{'List of JS files to always be loaded for the agent interface.'} =
        'JS fájlok listája, amelyek mindig betöltődnek az ügyintézői felületnél.';
}

1;
