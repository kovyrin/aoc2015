#!/usr/bin/env ruby
# frozen_string_literal: true

input = File.read('data/day01.txt').strip

floor = 0
pos = 1
basement_pos = 0

input.each_char do |c|
  if c == '('
    floor += 1
  else
    floor -= 1
  end

  if floor == -1 and basement_pos == 0
    print "Part 2: #{pos}\n"
    basement_pos = pos
  end

  pos += 1
end

puts "Part 1: #{floor}"
