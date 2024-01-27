
% module name

-module(rpssl).

% variation of Rock Paper Scissors with 2 more choices

% Rock beats scissors and lizard, losses to paper and spock and ties with rock

% Paper beats rock and spock, looses to scissors and lizard and ties with paper

% Scissors beats paper and lizard, looses to rock and spock and ties with scissors

% Spock beats rock and scissors, looses to paper and lizard and ties with spock

% Lizard beats paper and spock, looses to rock and scissors and ties with lizard

-export([play/1
	]).


% the possible moves of the game for Rock Paper Scissors Spock Lizard.

% it is a 5 choice variation of rock paper scissors.

-define(MOVES, [rock, paper, scissors, spock, lizard]).


% Computer choice for the round is randomly chosen from list of possible choices.

computer_play() ->
    lists:nth(rand:uniform(length(?MOVES)), ?MOVES).



% how the play move works once the module is running

play(Move) ->
    ComputerMove = computer_play(),
    play(ComputerMove, Move).


% possible outcome of the choices for the game.

play(ComputerMove, Move) ->
    case {ComputerMove, Move} of
	{rock, rock} -> 
	    {[{computer, rock}, {player, rock}], tie};
	{rock, paper} -> 
	    {[{computer, rock}, {player, paper}], player_wins};
	{rock, scissors} -> 
	    {[{computer, rock}, {player, scissors}], computer_wins};
	{rock, spock} -> 
	    {[{computer, rock}, {player, spock}], player_wins};
	{rock, lizard} -> 
	    {[{computer, rock}, {player, lizard}], computer_wins};
	{paper, rock} -> 
	    {[{computer, paper}, {player, rock}], computer_wins};
	{paper, paper} -> 
	    {[{computer, paper}, {player, paper}], tie};
	{paper, scissors} -> 
	    {[{computer, paper}, {player, scissors}], player_wins};
	{paper, spock} -> 
	    {[{computer, paper}, {player, spock}], computer_wins};
	{paper, lizard} -> 
	    {[{computer, paper}, {player, lizard}], player_wins};
	{scissors, rock} -> 
	    {[{computer, scissors}, {player, rock}], player_wins};
	{scissors, paper} -> 
	    {[{computer, scissors}, {player, paper}], computer_wins};
	{scissors, scissors} -> 
	    {[{computer, scissors}, {player, scissors}], tie};
	{scissors, spock} -> 
	    {[{computer, scissors}, {player, spock}], player_wins};
	{scissors, lizard} -> 
	    {[{computer, scissors}, {player, lizard}], computer_wins};
	{spock, rock} -> 
	    {[{computer, spock}, {player, rock}], computer_wins};
	{spock, paper} -> 
	    {[{computer, spock}, {player, paper}], player_wins};
	{spock, scissors} -> 
	    {[{computer, spock}, {player, scissors}], computer_wins};
	{spock, spock} -> 
	    {[{computer, spock}, {player, spock}], tie};
	{spock, lizard} -> 
	    {[{computer, spock}, {player, lizard}], player_wins};
	{lizard, rock} -> 
	    {[{computer, lizard}, {player, rock}], player_wins};
	{lizard, paper} -> 
	    {[{computer, lizard}, {player, paper}], computer_wins};
	{lizard, scissors} -> 
	    {[{computer, lizard}, {player, scissors}], player_wins};
	{lizard, spock} -> 
	    {[{computer, lizard}, {player, spock}], computer_wins};
	{lizard, lizard} -> 
	    {[{computer, lizard}, {player, lizard}], tie};


	% what happens when the player enters a choice that is not a part
	
	% of the possible list, prints dont_cheat
	
	_ ->
	    dont_cheat
    end.