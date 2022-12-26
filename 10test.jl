using HorizonSideRobots
n = readline()
n = parse(Int64, n)
include("10.jl")
r = Robot("10.sit", animate = true)
draw_chess_square!(r, n)