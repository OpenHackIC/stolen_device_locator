#!/usr/bin/env ruby
uniques = {}

stolen = {}
File.readlines('/home/ben/Desktop/stolen.txt').each { |l| stolen[l.chomp] = true }

ARGF.each_line do |line|
  mac_addresses = line.split(/\s+/).reject(&:empty?)

  mac_addresses.each do |mac_address|
    if !uniques.has_key?(mac_address)
      uniques[mac_address] = true
      puts "#{uniques.length}: #{mac_address}"
      if stolen.has_key?(mac_address)
        puts "GET 'EM!"
      end
    end
  end
end
