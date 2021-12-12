#じゃんけん
def janken
  puts "最初はグー、じゃんけん"
  puts "0(グー)１(チョキ)２(パー)"
  player_hand = gets.to_i
  enemy_hand = rand(3)
  jankens = ["グー","チョキ","パー"]
  puts "ポン"
  puts "_____________________________________"
  puts "あなた：#{jankens[player_hand]}を出しました 相手：#{jankens[enemy_hand]}を出しました"

    
  if player_hand == enemy_hand
    puts "あいこです"
    return true
        
  elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)      
    puts "あなたの勝ちです"
    @result = "win"
    return false 
  
  else 
    puts "あなたの負けです"
    @result = "lose"
    return false
  end
end
  next_game = true

while next_game do
next_game = janken 
end

#あっちむいてほい

if @result == "win"
  puts "あっち向いて〜"
  puts "0(上)１(右)２(下)3(左)"
  player_face = gets.to_i
  enemy_face = rand(4)
  directions = ["上","右","下","左"]
  puts "ホイ！"
  puts "_____________________________________"
  puts "あなた：#{directions[player_face]} 相手：#{directions[enemy_face]}"

  if player_face == enemy_face
    puts "あなたの勝ちです"
  elsif 
    puts "引き分けです"
    @result = "draw"
  end
end

if @result == "lose"
  puts "あっち向いて〜"
  puts "0(上)１(右)２(下)3(左)"
  player_face = gets.to_i
  enemy_face = rand(4)
  directions = ["上","右","下","左"]
  puts "ホイ"
  puts "_____________________________________"
  puts "あなた：#{directions[player_face]} 相手：#{directions[enemy_face]}"

  if player_face == enemy_face
    puts "あなたの負けです"
  elsif
    puts "引き分けです" 
    @result = "draw"
  end
end
