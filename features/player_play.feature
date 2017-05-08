

Feature: player play
Scenario: play
  Given game starting
  When player select a valid "1"
  Then new board should show new board
