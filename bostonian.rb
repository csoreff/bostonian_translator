#Corey Soreff Launch Academy Scholarship Challenge
class Bostonian
  def initialize(string)
    @string = string
    @wicked_pissa_hash = {
      "opah" => "oper",
      "ttah" => "tter",
      "eeah" => "eer",
      "ahd" => "ard",
      "rrah" => "rror",
      "psha" => "pture",
      "aht" => "art",
      "ahk" => "ark",
      "veah" => "vere",
      "nnah" => "nner",
      "vah" => "ver",
      "didja" => "did you",
      "cah" => "car",
      "wicked" => "really",
      "yoah" => "your",
      "codin " => "coding ",
      "doan" => "don't",
      "ahnt" => "aunt",
      "stoah" => "store",
      "packie" => "liquor store",
      "across the river" => "across the Charles river",
      "all set" => "ready",
      "reah" => "rear",
      "ahm" => "arm",
      "b'daydas" => "potatoes",
      "bahn" => "garage",
      "bang a" => "take a",
      "barrel" => "trash can",
      "bazo" => "drunk",
      "big-ball bowling" => "10-pin bowling",
      "boahded" => "confirmed",
      "book it" => "hurry",
      "booked" => "hurried",
      "brar" => "bra",
      "breakdown lane" => "shoulder",
      "bubbla" => "water fountain",
      "bucka" => "idiot",
      "budge" => "steal",
      "budged" => "stole",
      "the bury" => "Roxbury",
      "the ahbs" => "Arnold Arboretum",
      "the b's" => "the Bruins",
      "calm ya livva" => "calm down",
      "the cape" => "Cape Cod",
      "cella" => "basement",
      "chowdahead" => "idiot",
      "decked out" => "dressed nicely",
      "digga" => "fall",
      "dinga" => "party",
      "directional" => "turn signal",
      "dunk's" => "Dunkin' Donuts",
      "elastic" => "rubber band",
      "foddy" => "forty",
      "foreigna" => "out-of-stater",
      "frankfurt" => "hot dog",
      "frappe" => "milkshake",
      "gahbidge" => "garbage",
      "sahx" => "sox",
      "hahvid yahd" => "Harvard Yard", "hahvahd yahd" => "Harvard Yard", "hahvihd yahd" => "Harvard Yard",
      "hahvihd" => "Harvard", "hahvahd" => "Harvard","hahvid" => "Harvard",
      "how why ya" => "how are you",
      "jimmies" => "sprinkles",
      "jp" => "Jamaica Plain",
      "kegga" => "party with a keg of beer",
      "mehfuh" => "Medford",
      "medfid" => "Medford",
      "nah-ah" => "no way",
      "naw" => "no",
      "yah" => "yes",
      "no suh" => "really",
      "ofd" => "originally from Dorchester",
      "onna-conna" => "on account of",
      "inbound" => "towards downtown",
      "outbound" => "away from downtown",
      "heah" => "here",
      "theah" => "there",
      "thea" => "there",
      "p-town" => "Provincetown",
      "pahluh" => "living room",
      "piazza" => "front porch",
      "the pike" => "the Massachussetts Turnpike",
      "pissah" => "cool",
      "pissa" => "cool",
      "squayuh" => "square",
      "quayuh" => "stupid",
      "rawregg" => "uncooked egg",
      "rawrout" => "cold out",
      "rotary" => "traffic circle",
      "rozzie" => "Roslindale",
      "saddadee" => "Saturday",
      "sangwich" => "sandwich",
      "shoe-ah" => "sure",
      "shuah" => "sure",
      "so don't i" => "I do too",
      "southie" => "South Boston",
      "squeet" => "let's go eat",
      "suicide circle" => "traffic circle",
      "suppah" => "dinner",
      "suppa" => "dinner",
      "the t " => "the MBTA ",
      "three decka" => "three-story house",
      "tonic" => "soda",
      "tawnic" => "soda",
      "townie" => "resident of Charlestown",
      " uey" => " U-turn",
      "what's doin'" => "how are you",
      "wicked frickin' pissa" => "really cool",
      "wicked pissa" => "really cool",
      " yar " => " yeah ",
      " tah " => " to ",
      "tah" => "ter",
      "chowdah" => "chowder",
      "oah" => "or",
      "bah" => "ber",
      "dah" => "der",
      "nah" => "no",
      "ah" => "ar",
      "bahston" => "boston",
      "dough" => "money",
    }
  end
  # method to translate Boston accent to proper English
  def translate
    @wicked_pissa_hash.each {|key, value| @string.gsub!(/#{key}/i, value) }
    @string = @string.split(/(?<=[?.!])\s*/).each {|i| i.capitalize!}.join(" ")
    @string
  end

  # method to translate proper English to awesome Bahston accent
  def to_bostonian
    @wicked_pissa_hash.each {|key, value| @string.gsub!(/#{value}/i, key) }
    @string = @string.split(/(?<=[?.!])\s*/).each {|i| i.capitalize!}.join(" ")
    @string
  end

  def start
    puts "Hey theah! How why ya? Did you bring me the chowdah I asked foah? No?  Oh, well, what didja want tah do? Enter the number of your choice."
    puts "1. Translate Boston accent to proper English."
    puts "2. Translate normal boring English to a wicked awesome Boston accent."
    while true
      selection = gets.chomp.to_i
      case selection
      when 1
        puts "I'm wicked bummed, you want to get rid of my accent!  Oh well, what do you want to translate?"
        jibberish = gets.chomp
        bostonian = Bostonian.new(jibberish)
        puts bostonian.translate
        break
      when 2
        puts "I'm wicked excited!  Let's get rid of that silly proper English of yours! What would you like to translate to Bostonian?"
        jibberish = gets.chomp
        bostonian = Bostonian.new(jibberish)
        puts bostonian.to_bostonian
        break
      else
        puts "Please enter 1 or 2"
      end
    end
  end
end
