#!/usr/bin/env ruby
# frozen_string_literal: true

input = File.read('data/day02.txt').strip.split("\n")

total_area = 0
total_ribbon = 0
input.each do |line|
  h, w, l = line.split('x').map(&:to_i).sort

  wrapping_area = 2 * h * w + 2 * w * l + 2 * l * h
  smallest_side = h * w

  total_area += wrapping_area + smallest_side

  ribbon = 2 * h + 2 * w + h * w * l
  total_ribbon += ribbon
end

puts "Part 1: #{total_area}"
puts "Part 2: #{total_ribbon}"
