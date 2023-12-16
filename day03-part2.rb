#!/usr/bin/env ruby
# frozen_string_literal: true

input = File.read('data/day03.txt').strip

santa_x = 0
santa_y = 0

robot_x = 0
robot_y = 0

visited = Set.new

current_move = :santa

input.each_char do |c|
  visited << [santa_x, santa_y]
  visited << [robot_x, robot_y]

  delta_x = 0
  delta_y = 0

  case c
  when '^'
    delta_y = -1
  when 'v'
    delta_y = 1
  when '>'
    delta_x = 1
  when '<'
    delta_x = -1
  end

  if current_move == :santa
    santa_x += delta_x
    santa_y += delta_y
    current_move = :robot
  else
    robot_x += delta_x
    robot_y += delta_y
    current_move = :santa
  end
end

puts "Part 2: #{visited.size}"

# Submissions:
# 8141 - too high
