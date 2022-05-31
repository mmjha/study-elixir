b = << 1, 2, 3 >>
IO.puts byte_size b
IO.puts bit_size b

dqs = "ax/ay"
IO.puts String.length dqs
IO.puts byte_size dqs
IO.puts String.at(dqs, 0)
IO.inspect String.codepoints(dqs)
IO.inspect String.split(dqs, "/")
IO.puts String.duplicate "Ho! ", 3
IO.puts String.ends_with? "string", ["elix", "stri", "ring"]
IO.puts String.first "aog"
# IO.inspect String.codepoints "noe\u038l"
# IO.inspect String.graphemes "noe\u038l"
IO.puts String.jaro_distance("jonathan", "jonathon")
IO.inspect String.myers_difference("banana", "panama")
