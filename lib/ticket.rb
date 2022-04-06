class Ticket
    attr_reader :fare, :stamped_at #外で使うよ

    def initialize(fare) #下で使うため
        @fare = fare
    end

    def stamp(name)
        @stamped_at = name #駅名を代入　乗車駅　enter
    end

end
