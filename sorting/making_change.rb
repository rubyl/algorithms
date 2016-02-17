# def make_change(amount, denomination)
#   current_amount = amount
#
#   coin_count = 0
#   index = 0
#   while current_amount >= denomination[index]
#     coin_count = coin_count + 1
#     current_amount = current_amount - denomination[index]
#     if current_amount <= denomination[index]
#       index = index + 1
#     end
#   end
#   return coin_count
# end

# def make_change(amount)
#   current_amount = amount
#   quarter = count_quarters(current_amount)
#   current_amount = current_amount - (25 x quarter)
# end
#
# def making_change(amount, denomination)
#   current_amount = amount
#   coin_count = 0
#   i = 0
#   while current_amount >= denomination[i]
#     coin_count = coin_count + 1
#     current_amount = current_amount % denomination[i]
#     if current_amount <= denomination[i]
#       coin_count = coin_count + 1
#       i = i + 1
#     end
#   end
#   return coin_count
# end


def making_change(amount, denomination)
  current_amount = amount
  coin_count = 0
  i = 0
  while current_amount >= denomination[i] do
    current_amount = current_amount % denomination[i]
    coin_count = coin_count + 1
    if current_amount <= denomination[i]
      puts i = i + 1
    end
  end
  return coin_count
end

def making_change2(amount, denomination)
  current_amount = amount
  coin_count = 0
  i = 0
  while current_count > 0 do
    coin_count = coin_count + current_amount/denomination[i]
    current_amount = current_amount % denomination[i]
    i += 1 if current_amount <= denomination[i]
  end
  return coin_count
end

def making_change3(amount, coins)
  coin_count = 0
  coins.each do |coin|
    coin_count = coin_count + amount/coin
    amount = amount % coin
  end
  coin_count
end

def making_change4(amount, coins)
  coins.inject(0) do |coin_count, coin|
    coin_count = coin_count + amount/coin
    amount = amount % coin
    coin_count
  end
end

# def make_change(amount)
#   current_amount = amount
#   quarter = count_quarters(current_amount)
#   current_amount = current_amount - (25 x quarter)
# end

change = [25, 10, 5, 1]
# puts making_change4(331,change)
 puts making_change4(81,change)