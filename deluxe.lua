luadeluxe = {}

function luadeluxe:GenerateMeter(len,sides,insidefull,insideempty,val,max)
  if type(sides) == "table" and type(len) == "number" and (type(insidefull) == "string" or type(insidefull) == "table") and (type(insideempty) == "string" or type(insideempty) == "table") and type(val) == "number" and type(max) == "number" then
			local meter = sides[1]
			for i = 1, len-2 do
				if val >= ((max/(len - 2))*i) then
				if type(insidefull) == "table" then
				meter = meter .. insidefull[1+(i % #insidefull)]
					else
					meter = meter .. insidefull
					end
				else
				if type(insideempty) == "table" then
				meter = meter .. insideempty[1+(i % #insideempty)]
					else
					meter = meter .. insideempty
					end
				end
				end
		meter = meter .. sides[2]
		return meter
      else
      error("Wrong Value Types!")
      end
  end
print(luadeluxe:GenerateMeter(10,{"[","]"},{"X","O"},{"|","-"},50,100))
