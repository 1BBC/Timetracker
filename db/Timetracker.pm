package Timetracker;

=head2

  Tags

=cut

use strict;
use parent 'main';
my $MODULE = 'Timetracker';

#**********************************************************
# Init
#**********************************************************
sub new{
  my $class = shift;
  my ($db, $admin, $CONF) = @_;

  my $self = { };
  bless( $self, $class );

  $admin->{MODULE} = $MODULE;
  $self->{db} = $db;
  $self->{admin} = $admin;
  $self->{conf} = $CONF;

  return $self;
}

#**********************************************************
=head2  add()

=cut
#**********************************************************
sub add{
  my $self = shift;
  my ($attr) = @_;

  $self->query_add( 'timetracker', $attr );

  return $self;
}

#**********************************************************
=head2  add()

=cut
#**********************************************************
sub add_element{
  my $self = shift;
  my ($attr) = @_;

  $self->query_add( 'timetracker_element', $attr );

  return $self;
}

#**********************************************************
=head2  add() - Delete user info from all tables

=cut
#**********************************************************
sub del{
  my $self = shift;
  my ($attr) = @_;

  $self->query_del( 'timetracker', undef, $attr );

  return $self->{result};
}

#**********************************************************
=head2  add() - Delete element

=cut
#**********************************************************
sub del_element{
  my $self = shift;
  my ($id) = @_;

  $self->query_del( 'timetracker_element', { ID => $id } );

  return $self->{result};
}

#**********************************************************
=head2 list($attr) - list bill accounts

=cut
#**********************************************************
sub list{
  my $self = shift;
  my ($attr) = @_;

  my $SORT = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC = ($attr->{DESC}) ? $attr->{DESC} : '';
  #my $PG        = ($attr->{PG})        ? $attr->{PG}             : 0;
  #my $PAGE_ROWS = ($attr->{PAGE_ROWS}) ? int($attr->{PAGE_ROWS}) : 25;

  my $WHERE = $self->search_former( $attr, [
      [ 'ID', 'INT', 'id', 1],
      [ 'NAME', 'STR', 'name', 1 ],
      [ 'NUM1', 'int', 'num1', 1 ],
      [ 'NUM2', 'int', 'num2', 1 ],
      [ 'NUM3', 'int', 'num3', 1 ],
      [ 'DATE', 'DATE', 'date', 1 ],
      
    ],
    { WHERE => 1,
    }
  );

  $self->query2( "SELECT id, name, num1, num2, num3, date
     FROM timetracker $WHERE ORDER BY $SORT $DESC;",
    undef,
    {COLS_NAME => 1}
  );

  return $self->{list};
}

#**********************************************************
=head2 list($attr) - list for element

=cut
#**********************************************************
sub list_element{
  my $self = shift;
  my ($attr) = @_;

  my $SORT = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC = ($attr->{DESC}) ? $attr->{DESC} : '';
  #my $PG        = ($attr->{PG})        ? $attr->{PG}             : 0;
  #my $PAGE_ROWS = ($attr->{PAGE_ROWS}) ? int($attr->{PAGE_ROWS}) : 25;

  # my $WHERE = $self->search_former( $attr, [
  #     [ 'ID', 'INT', 'id', 1],
  #     [ 'ELEMENT', 'STR', 'element', 1 ],      
  #   ],
  #   { WHERE => 1,
  #   }
  # );

  $self->query2( "SELECT id, element, priority
     FROM timetracker_element ORDER BY $SORT $DESC;",
    undef,
    {COLS_NAME => 1}
  );

  return $self->{list};
}

#**********************************************************
=head2 list($attr) - list for timetracker

=cut
#**********************************************************
sub list_for_timetracker{
  my $self = shift;
  my ($attr) = @_;

  my $SORT = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC = ($attr->{DESC}) ? $attr->{DESC} : '';
  #my $PG        = ($attr->{PG})        ? $attr->{PG}             : 0;
  #my $PAGE_ROWS = ($attr->{PAGE_ROWS}) ? int($attr->{PAGE_ROWS}) : 25;

  my $WHERE = $self->search_former( $attr, [
      [ 'NAME', 'STR', 'name', 1 ],
      [ 'ELEMENT', 'int', 'element', 1 ],
      [ 'NUM_ELEMENT', 'int', 'num_element', 1 ],
      [ 'DATE', 'DATE', 'date', 1 ],
    ],
    { WHERE => 1,
    }
  );

  $self->query2( "SELECT name, element, num_element, date
     FROM timetracker
     $WHERE;",
    undef,
    {COLS_NAME => 1}
  );

  return $self->{list};
}

#**********************************************************
=head2 change($attr) -  Change element

=cut
#**********************************************************
sub change_element{
  my $self = shift;
  my ($attr) = @_;

  $self->changes2(
    {
      CHANGE_PARAM => 'ID',
      TABLE        => 'timetracker_element',
      DATA         => $attr,
    }
  );

  return $self->{result};
}
