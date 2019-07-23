x = [-0.610818, -0.0, -0.0, -0.0, -168.179, 0.0, -0.212711, -0.0, -0.0, -0.0, 158.229, 0.0, 6.58824, 0.0, 0.0, 0.0, 79.6022, 0.0]
m = [8.0,8.0,1.0]

function f4B(x::Array{Float64,1}, m::Array{Float64,1}) #v2
	g1 = G * m[1] * (x[1] - x[7])
	g2 = G * m[3] * (x[13] - x[7])
	r1 = ((x[1] - x[7])^2 + (x[2] - x[8])^2 + (x[3] - x[9])^2)^0.5
	r3 = ((x[7] - x[13])^2 + (x[8] - x[14])^2 +(x[9] - x[15])^2)^0.5
	return g1/(r1^3) + g2/(r3^3)
end

m1=m[1]
m3=m[3]
x1=x[1]
x7=x[7]
x13=x[13]
x2=x[2]
x8=x[8]
x3=x[3]
x9=x[9]
x14=x[14]
x15=x[15]

function f4B2(m1,m3,x1,x7,x13,x2,x8,x3,x9,x14,x15) #v2
	g1 = G * m1 * (x1 - x7)
    g2 = G * m3 * (x13 - x7)
	r1 = ((x1 - x7)^2 + (x2 - x8)^2 + (x3 - x9)^2)^0.5
	r3 = ((x7 - x13)^2 + (x8 - x14)^2 +(x9 - x15)^2)^0.5
	return g1/(r1^3) + g2/(r3^3)
end