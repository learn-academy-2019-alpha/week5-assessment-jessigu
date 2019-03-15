# We've done the following exercises in Javascript, Now try them in RUBY (You can do them in Javascript again if you want extra practice - not required.)
#
# The World Translator
# Write a Method named hello_world that:
#
# takes 1 argument, a language code (e.g. "es", "de", "en")
# returns "Hello, World" for the given language, for at least 3 languages. It should default to returning English.
#hello_world("es") should return "Hola Mundo"
#hello_world("de") should return "Hallo Welt"
def hello_world (str)
  return 'hola mundo' if str == "es"
  return 'hallo welt' if str == "de"
  return 'hello world'
end

# p hello_world('es')



# The Grade Assigner
# Write a Method named assign_grade that:
#
# takes 1 argument, a number score.
# returns a grade for the score, either "A", "B", "C", "D", or "F".
# assign_grade(90) should return A
# assign_grade(75) should return C
def assign_grade (num)
  return 'A' if num > 89
  return 'B' if num > 79
  return 'C' if num > 69
  return 'D' if num > 59
  return 'F'
end

# p assign_grade(90)
# p assign_grade(80)
# p assign_grade(70)
# p assign_grade(60)
# p assign_grade(50)




# The Pluralizer
# Write a method named pluralizer that:
#
# takes 2 arguments, a noun and a number.
# returns the number and pluralized form of the noun, if necessary.
# pluralizer(5, cat) should return "5 cats"
# pluralizer(1, dog) should return "1 dog" because the number one does not require a plural noun
# Arguments will always be a number and a singular noun.

# Bonus: Make it handle a few collective nouns like "sheep", "geese", "children", "people" and "species".
def pluralizer (num, noun)
  return "#{num} #{noun}" if num == 1
  return "#{num} geese" if noun == "goose"
  return "#{num} sheep" if noun == "sheep"
  return "#{num} #{noun}s"
end

p pluralizer(5, 'dog')
p pluralizer(1, 'dog')
p pluralizer(5, 'sheep')
p pluralizer(1, 'sheep')
p pluralizer(1, 'goose')
p pluralizer(5, 'goose')
