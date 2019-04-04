def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  array = person[:favourites][:snacks]
  if (array.include?(food))
    return true
  else
    return false
  end
end

def add_friend(person, friend)
  person[:friends].push(friend).length
end

def remove_friend(person, friend)
  array = person[:friends]
  array.delete(friend)
  array.length
end

def add_together_everyones_money(persons)
  total_money = 0
  for money in persons
   total_money += money[:monies]
  end
  return total_money
end

def lending_money(person1, person2, amount_to_lend)
  person1[:monies] -= amount_to_lend
  person2[:monies] += amount_to_lend
end
