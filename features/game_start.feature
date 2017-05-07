

Feature: game start

Scenario: game start
  Given not playing
  When  players start connect four
  Then they should see connect four start
  And a board with seven column and six rows
