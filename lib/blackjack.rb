
def welcome
  puts  "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def invalid_command
  return "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  play = get_user_input
  if play == 'h'
    card_total += deal_card
  elsif play == 's'
    return (card_total)
  else
    invalid_command
  end
  return (card_total)
end

def runner
  welcome
  card_value = initial_round
    until card_value > 21
      card_value = hit?(card_value)
      display_card_total(card_value)
    end
  end_game(card_value)
end