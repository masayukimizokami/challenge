class Gate
    STATIONS = [:umeda,:juso,:mikuni] #配列　駅名
    FARES = [150,190]  #配列　運賃
    
        def initialize(name) #駅名を定義
            @name = name
        end
    
        def enter(ticket)
            ticket.stamp(@name) #自分の駅名をticketクラスのstampに渡す　パソコン上では乗車だろうが降車だろうがどっちでもいい
        end
    
        def exit(ticket) 
            fare = clac_fare(ticket)
            fare <= ticket.fare #ticket.fareはテストで代入された額　
            # つまり下の計算した式は、テストで代入された金額と同じか小さいですよ！って意味
        end

        private
    
        def clac_fare(ticket) #これを上の１４に代入される
            from = STATIONS.index(ticket.stamped_at) #乗車駅
            to = STATIONS.index(@name)
            distance = to - from #2-0(mikuni-umeda)
            FARES[distance - 1] #ITが数字が０から始まるので微調整 つまり、0==150  1==190
        end
end

#わからないこと、from = STATIONS.index(ticket.stamped_at) #乗車駅  to = STATIONS.index(@name)降車駅になぜ差が生まれるのか？
#テストの式でそれぞれを代入している。上はあくまでも、それを実現するための式
    