def say(words="Hello")
  puts words + (0 == "!?.".count(words[-1,1]) ? "." : "")
end

say("Hello!")
say()
say("I trust you are well")
say("I'm fine, thanks.")
say("Lovely day, isn't it?")
say("Of course!")