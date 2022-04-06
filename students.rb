class Student #大元のデータを作るよーってやつ（今回は佐藤さん）
    def initialize(name) #名前を入れるよ（絶対に作られる）
        @name = name #@はクラス内でも使う
    end

    def cal_avg(date) #平均点を出すメソッド
        sum = 0 #無いとできない、合計点を一度空にする
        for score in date do #29の[70,65,50,90,30]の文を回す
            sum += score #sumっていう関数にscoreを一つづつ足す
        end
        avg = sum / date.length #平均点は合計÷データの数
        return avg #無くてもできるようだが、、、、
    end

    def jedge(avg)
        reslt = '' #無くても行けるが、結果というモノを一度空にしておく
        if 60 <= avg
            result = "passed"
        else 
            result = "failed"
        end
        return result #無くてもできるようだが、、、、
    end

    attr_accessor :name  #下のオブジェクトの外で入力可能にするため
end

a001 = Student.new("sato") #studentってクラス（データ）に佐藤さんを加える,initialize
date = [70,65,50,90,30] #cal_avg(date)に佐藤さんのデータを加える
avg = a001.cal_avg(date) #11の式に代入し佐藤さんの平均点を出す
result = a001.jedge(avg) #15のjedgeのオブジェクトに代入
p a001.name #sato
p avg #平均点
p result #passed or failed


