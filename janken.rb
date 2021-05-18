class Game
    def janken
        puts "世界最強のじゃんけん王と戦おう！"
        puts "最強のじゃんけん王とじゃんけん ＋ あっち向いてホイで勝負をしよう！"
        puts "最初はグー、じゃんけん……"
        puts "[0]:グー\n[1]:チョキ\n[2]:パー"
        player_hand = gets.to_i
        
        program_hand = rand(3)
        jankens = ["グー", "チョキ", "パー"]
        
        puts "あなた: #{jankens[player_hand]}"
        puts "じゃんけん王: #{jankens[program_hand]}"
        
        # あいこの時
        if player_hand == program_hand
            next_game = true
            
            puts "おっっと！あいこだ！"
        # じゃんけんを繰り返す  
        while next_game do
            next_game = janken
        end    
        
        # 勝った時
        elsif (program_hand - player_hand == 1 || program_hand - player_hand == -2)
            puts "じゃんけん王: あ、あり得ん。この俺様がじゃんけんで負けるなんて、、\nだが、まだだ、まだ、あっち向いてホイが残ってる！"
            puts "あなた: これで終わりだ〜！"
            puts "あっち向いて〜"
            puts "[0]:上\n[1]:右\n[2]:下\n[3]:左"
            
            player_hand = gets.to_i
            program_hand = rand(4)
            directions = ["上", "右", "下", "左"]
            
            puts "あなた: #{directions[player_hand]}"
            puts "じゃんけん王: #{directions[program_hand]}"
            
            if player_hand == program_hand
                puts "じゃんけん王: な、なんと、この俺様が、、、ぐあああああ"
                puts "やったね！世界最強のじゃんけん王に勝った！"
                directions = false 
                
            else
                puts "あなた: くそ。おしかった、、"
                puts "じゃんけん王: ふん。俺に勝とうなんて100万年早いわ！！"
                puts "もう一度じゃんけんからやりなおそう！"
                
                next_game = true
                while next_game do
                    next_game = janken
                end    
            end
            
        # 負けた時
        else
            puts "じゃんけん王: ぐはははは！だから言ったろう。俺様にじゃんけんで勝てるわけがないと！"
            puts "あんた: くっ、、まだだ！まだあっち向いてホイが残ってる！"
            puts "あっち向いて〜"
            puts "[0]:上\n[1]:右\n[2]:下\n[3]:左"
            
            player_hand = gets.to_i
            program_hand = rand(4)
            directions = ["上", "右", "下", "左"]
            
            puts "あなた: #{directions[player_hand]}"
            puts "じゃんけん王: #{directions[program_hand]}"
            
            if player_hand == program_hand
                puts "じゃんけん王: ぐはははは！だから言ったろう。俺様に勝てるわけがないと！"
                puts "あなた: くっくっ、くそおおおおおおお〜"
                puts "残念・・・。あなたの負けです。"
                directions = false
                
            else
                puts "あんた: ふぅ〜、危なかった。"
                puts "じゃんけん王: ちっ。しぶとい奴め。"
                puts "もう一度じゃんけんからやりなおそう！"
                
                next_game = true
                while next_game do
                    next_game = janken
                end
            end
        end
    end
end

Game.new.janken