# --
# Kernel/Output/HTML/DashboardMyLastChangedTickets.pm
# Copyright (C) 2015 Perl-Services.de, http://perl-services.de
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::DashboardMyLastChangedTickets;

use strict;
use warnings;

our $ObjectManagerDisabled = 1;

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # get needed objects
    for my $Needed (qw(Config Name UserID)) {
        die "Got no $Needed!" if ( !$Self->{$Needed} );
    }

    return $Self;
}

sub Preferences {
    my ( $Self, %Param ) = @_;

    return;
}

sub Config {
    my ( $Self, %Param ) = @_;

    return (
        %{ $Self->{Config} },
        CacheKey => 'MyLastChangedTickets'
            . $Self->{UserID} . '-'
            . $Kernel::OM->Get('Kernel::Output::HTML::Layout')->{UserLanguage},
    );
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $DBObject     = $Kernel::OM->Get('Kernel::System::DB');
    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');
    my $LayoutObject = $Kernel::OM->Get('Kernel::Output::HTML::Layout');
    my $ConfigObject = $Kernel::OM->Get('Kernel::Config');

    my $Limit = $ConfigObject->Get( 'DashboardMyLastChangedTickets::Limit' );

    my $SQL = qq~
        SELECT distinct
        FROM ticket_history
        WHERE 
    ~;

    return if !$DBObject->Prepare(
        SQL   => $SQL,
        Bind  => [],
        Limit => $Limit,
    );

    # render content
    my $Content = $LayoutObject->Output(
        TemplateFile => 'AgentDashboardMyLastChangedTickets',
        Data         => {
            %{ $Self->{Config} },
        },
    );

    # return content
    return $Content;
}

1;
