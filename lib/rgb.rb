def to_hex(r,g,b)
    hex = '#' 
        [r,g,b].each do |n|
            hex += n.to_s(16).rjust(2,'0')
        end
    hex
end

# '#'+ r.to_s(16).rjust(2,'0') + g.to_s(16).rjust(2,'0') + b.to_s(16).rjust(2,'0') 

def to_ints(hex)
    r = hex[1..2]
    g = hex[3..4]
    b = hex[5..6]
    #ints = []
    #[r,g,b].each do |s|
    [r,g,b].map do |s|
       # ints << s.hex
       s.hex
    end
    #ints
end

