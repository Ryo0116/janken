loop do
    puts "最初はグー、じゃんけん・・・\n0(グー) 1(チョキ) 2(パー) 3(逃げる)"
    janken_type = gets.to_s.chomp
    puts "==============="
    
    case janken_type
    when "0"
        puts "あなた：グーを出しました。"
    when "1"
        puts "あなた：チョキを出しました。"
    when "2"
        puts "あなた：パーを出しました。"
    when "3"
        puts "あなた：逃げました。"
        break
    else
        puts "0~3を半角で入力してください。"
    end

    r = Random.new()
    cpu_janken_type = r.rand(3).to_s
    case cpu_janken_type
    when "0"
        puts "相手：グーを出しました。"
    when "2"
        puts "相手：チョキを出しました。"
    when "3"
        puts "相手：パーを出しました。"
    end
    puts "==============="


    #勝ち
    if janken_type ==="0" && cpu_janken_type ==="1" || janken_type ==="1" && cpu_janken_type ==="2" || janken_type ==="2" && cpu_janken_type ==="0"
        puts "あなたはじゃんけんに勝ちました。"
        puts "あっち向いてホイ"
        puts "0(上) 1(下) 2(左) 3(右)"
        finger_direction_type = gets.to_s.chomp
        puts "==============="

        case finger_direction_type
        when "0"
            puts "上！"
        when "1"
            puts "下！"
        when "2"
            puts "左！"
        when "3"
            puts "右！"
        end
        r2 = Random.new()
        cpu_face_direction_type = r2.rand(4).to_s

        case cpu_face_direction_type
        when "0"
            puts "相手は上を向きました。"
        when "1"
            puts "相手は下を向きました。"
        when "2"
            puts "相手は左を向きました。"
        when "3"
            puts "相手は右を向きました。"
        end
        puts "==============="

        if finger_direction_type === cpu_face_direction_type
            puts "あなたの勝ちです。"
            break
        else
        end

    #負け
    elsif janken_type ==="0" && cpu_janken_type ==="2" || janken_type ==="1" && cpu_janken_type ==="0" || janken_type ==="2" && cpu_janken_type ==="1"
        puts "あなたはじゃんけんに負けました。"
        puts "あっち向いてホイ！"
        puts "0(上) 1(下) 2(左) 3(右)"
        face_direction_type = gets.to_s.chomp
        puts "==============="
        case face_direction_type
        when "0"
            puts "あなたは上を向きました。"
        when "1"
            puts "あなたは下を向きました。"
        when "2"
            puts "あなたは左を向きました。"
        when "3"
            puts "あなたは右を向きました。"
        end

        r3 = Random.new()
        cpu_face_direction_type = r3.rand(4).to_s

        case cpu_face_direction_type
        when "0"
            puts "相手は上を指しました"
        when "1"
            puts "相手は下を指しました。"
        when "2"
            puts "相手は左を指しました。"
        when "3"
            puts "相手は右を指しました。"
        end
        puts "================"

        if face_direction_type === cpu_face_direction_type
            puts "あなたの負けです"
            break
        else
        end
    else
    end

end