tailf_num = ARGV[0].to_i
tailf_num = 10 if tailf_num == 0


file_data = File.read("log.txt").split("\n")
line_num = file_data.length
tailf_num_data = file_data.last(tailf_num)
puts tailf_num_data


500.times do
  dynamic_file_data = File.read("log.txt").split("\n")
  no_of_lines = dynamic_file_data.length - line_num
  tailf_data = dynamic_file_data.last(no_of_lines)
  puts tailf_data
  line_num = dynamic_file_data.length
  sleep 1
end
