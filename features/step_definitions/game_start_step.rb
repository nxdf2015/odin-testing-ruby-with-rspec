
require "connect_4"



@row = "." * 7
@board = [@row] * 6


Given(/^not playing$/) do
  @game = Connect_4.new(output)
end

When(/^players start connect four$/) do
  @game.start
end

Then(/^they should see connect four start$/) do
#  output.messages.include? "connect four start"
end

Then(/^a board with seven column and six rows$/) do
#  output.messages.include? @board
end
