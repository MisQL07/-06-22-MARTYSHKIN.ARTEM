using HorizonSideRobots

r = Robot(15,15, animate = true)

function max!(robot)
    vverx(robot)
    putmarker!(robot)
    side = Ost;
    while !isborder(robot, side)
        move!(robot, side)
        putmarker!(robot)
        if isborder(robot, side)==true && !isborder(robot, Nord)==true
            move!(robot, Nord)
            putmarker!(robot)
            side = inverse(side)
        end
    end
end

function vverx(robot)
    while !isborder(robot, Sud)
        move!(robot, Sud)
    end
    while !isborder(robot, West)
        move!(robot, West)
    end
end

inverse(side::HorizonSide) = HorizonSide((Int(side) +2)% 4)
max!(r)