Given(/^game starting$/) do
  @game = Connect_4.new(output)
end

When(/^player select a valid "([^"]*)"$/) do |col|
  @game.play
end

Then(/^new board should show new board$/) do
  @game.board == ["R"]+ ["."] *6
end
