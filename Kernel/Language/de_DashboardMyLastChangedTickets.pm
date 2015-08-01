# --
# Kernel/Language/de_DashboardMyLastChangedTickets.pm - the german translation of DashboardMyLastChangedTickets
# Copyright (C) 2015 Perl-Services, http://www.perl-services.de
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

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'My last changed tickets'} = 'Meine zuletzt bearbeiteten Tickets';

    return 1;
}

1;
