x=0
400.times do
  x = x + 1
  File.write("log.txt", "Jai mata di ojas #{x} \n", mode: "a")
  sleep 2
end
