#!/usr/bin/env ruby
# frozen_string_literal: true

input = File.read('data/day03.txt').strip

x = 0
y = 0
visited = Set.new

input.each_char do |c|
  visited << [x, y]

  case c
  when '^'
    y -= 1
  when 'v'
    y += 1
  when '>'
    x += 1
  when '<'
    x -= 1
  end
end

puts "Part 1: #{visited.size}"
