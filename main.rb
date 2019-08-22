require "colorize"

def puts_git(cmd)
  puts "git #{cmd} -h"
  menu
end

def menu
  puts "1: Insert Git command".colorize(:cyan)
  puts "2: Exit".colorize(:red)
  choice = gets.to_i
  case choice
  when 1
    puts "Enter git command"
    puts_git(gets.strip)
    menu
  when 2
    exit
  else
    puts "Invalid choice"
    menu
  end
end

menu
# Fetch - getting code
# Push - adding code