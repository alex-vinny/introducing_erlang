% To quit only the shell Ctrl + G
% To quit Erlang as a role
q().

% . means end line command

% To see history commands
h().

% How much history to keep, where N is the quantity
history(N).

% Execute the line N again
e(N).

% See the result from specific line command
v(N).

%% File System

% Current directory
pwd().

% Navigation through directories
cd(..).

% List directory's content
ls().

% Remember used variables on shell
b().

% Clear all variables in memory on shell
f().

%% Compile your modules
% Don't need to include .erl extension
% Generating a .beam file
c(filename)

%%% BEAM stands for Bodgan's Erlang Abstract Machine (VM which runs .beam files)