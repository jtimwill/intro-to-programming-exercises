# Given

family = {  "uncles" => ["bob", "joe", "steve"],
            "sisters" => ["jane", "jill", "beth"],
            "brothers" => ["frank","rob","david"],
            "aunts" => ["mary","sally","susan"]
          }


result = family.select{|k,v| k == "brothers" || k == "sisters"}

puts result


final_answer = result.values


puts final_answer