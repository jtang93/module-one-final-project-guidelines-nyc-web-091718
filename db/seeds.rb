require 'pry'

def seed_houses
  House.create(name: "Gryffindor")
  House.create(name: "Slytherin")
  House.create(name: "Hufflepuff")
  House.create(name: "Ravenclaw")
end
#



def seed_wizards
  house_hash = {"Gryffindor" => 1, "Slytherin" => 2, "Hufflepuff" => 3, "Ravenclaw" => 4 }
  WIZARDS.each { |wiz| Wizard.create(name: wiz[:'name'], house_id: house_hash.values_at(wiz[:'house'])[0])}
end

def seed_styles
  STYLES.each {|style| Style.create(name: style[1])}
end

def seed_beers
  BEERS.each {|beer| Beer.create(name: beer[2],style_id: beer[3]=="-1" ? 11 : beer[3])}
end

def seed_housestyles
  s_style = [10,6,5]
  g_style = [11,9]
  h_style = [8,7,3]
  r_style = [2,4,1]

  s_style.each {|style| HouseStyle.create(house_id: 2, style_id: style)}
  g_style.each {|style| HouseStyle.create(house_id: 1, style_id: style)}
  h_style.each {|style| HouseStyle.create(house_id: 3, style_id: style)}
  r_style.each {|style| HouseStyle.create(house_id: 4, style_id: style)}
end
