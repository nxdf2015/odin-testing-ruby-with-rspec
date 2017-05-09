$LOAD_PATH.unshift File.expand_path("../../lib",__FILE__)
require "connect_4"


game = Connect_4.new
game.loop
