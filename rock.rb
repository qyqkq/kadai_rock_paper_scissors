while true 
  puts "じゃんけん．．．"
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  player_hand = gets.to_i
  program_hand = rand(3)
  
  jankens = ["グー","チョキ","パー","戦わない"]

  
  unless player_hand == 3
    puts "ホイ！"
    separator = "------------------------"
    puts separator
    puts "あなた：#{jankens[player_hand]}を出しました"
    puts "相手：#{jankens[program_hand]}を出しました"
    
    while player_hand == program_hand
      puts separator
      puts "あいこで．．．"
      return  true
    end

    if(player_hand == 0 && program_hand ==1)||(player_hand == 1 && program_hand ==2)||(player_hand == 2 && program_hand ==0)
      one_two_three = true
      
    else
      one_two_three = false
    end



    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"

    player_direction = gets.to_i
    program_direction = rand(4)
  
    one_two_three = ["上","下","左","右"]
  
    puts "ホイ！"
    puts "---------------"
    puts "あなた：#{one_two_three[player_direction]}"
    puts "相手：#{one_two_three[program_direction]}"
  
    if one_two_three && player_direction == program_direction
      puts "あなたの勝ちです"
      return false
    
    elsif !one_two_three && player_direction == program_direction
      puts "あなたの負けです"
      return false
    end
    
  else
    break
  end
end

