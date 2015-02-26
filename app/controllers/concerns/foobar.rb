class Foobar
	def self.baz(ary)
		return ary.map(&:to_i).map{|x| x+2}.select{|x| x%2==0}.uniq.select{|x| x<=10}.inject(:+)
	end
end
