def janken
    puts "最初はグー...\nじゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(辞退)"
            
    my_hand = gets.to_i
    cpu_hand = rand(3)
        
    jankens = ["グー","チョキ","パー"]
    puts "ホイ!\n ------------------"
        
    win = (my_hand == 0 && cpu_hand ==1) ||(my_hand == 1 && cpu_hand ==2) || (my_hand == 2 && cpu_hand ==0)
    lose = (my_hand == 0 && cpu_hand ==2) ||(my_hand == 1 && cpu_hand ==0) || (my_hand == 2 && cpu_hand ==1)
        
    if my_hand == cpu_hand
      puts "あなた:#{jankens[my_hand]}を出しました\n 相手:#{jankens[cpu_hand]}を出しました\n------------------"
      puts "あいこで..."
      return true
            
    elsif win
      puts "あなた:#{jankens[my_hand]}を出しました\n 相手:#{jankens[cpu_hand]}を出しました\n------------------"
      puts "あなた：勝ち"
      @result = "win"
      return false
    elsif lose
      puts "あなた:#{jankens[my_hand]}を出しました\n 相手:#{jankens[cpu_hand]}を出しました\n------------------"
      puts "あなた：負け"
      @result = "lose"
      return false
    elsif player_hand == 3
      puts "バイバイ!"
      exit
    elsif player_hand >= 4
      puts "入力値が正しくありません。0~３を入力してください。"
      return true
    end
    end
        
    def hoi
    if @result == "win"
    puts "あっち向いて〜\n0(上)1(下)2(左)3(右)"
      
    my_hoi = gets.to_i
    cpu_hoi = rand(4)
          
    hois = ["上","下","左","右"]
    puts "ホイ！\n------------------"
    puts "あなた:#{hois[my_hoi]}を指しました\n相手:#{hois[cpu_hoi]}を向きました\n------------------"
    if my_hoi == cpu_hoi
       puts "あなたの勝ち!"
       exit
    elsif my_hoi != cpu_hoi
       puts "じゃんけんからやり直し"
       return true
    end
    end
        
    if @result == "lose"
    puts "あっち向いて〜\n0(上)1(下)2(左)3(右)"
          
    my_hoi = gets.to_i
    cpu_hoi = rand(4)
          
    hois = ["上","下","左","右"]
    puts "ホイ！\n------------------"
    puts "相手:#{hois[cpu_hoi]}を指しました\nあなた:#{hois[my_hoi]}を向きました\n------------------"
    if my_hoi == cpu_hoi
       puts "あなたの負け!"
       exit
    elsif my_hoi != cpu_hoi
       puts "じゃんけんからやり直し"
       return true
    end
    end
    end
    
    next_game2 = true
    
    while next_game2
        next_game = true
        
        while next_game
         next_game = janken
        end
      next_game = hoi
    end