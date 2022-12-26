using HorizonSideRobots

r=Robot(15,15; animate=true)
side=Nord

function perimeter_markers(r::Robot)
    while isborder(r, HorizonSide(0)) == false
        move!(r, HorizonSide(0))
        putmarker!(r)
    end
    putmarker!(r)
    
    while isborder(r, HorizonSide(3)) == false
        move!(r, HorizonSide(3))
        putmarker!(r)
    end
    putmarker!(r)
    
    while isborder(r, HorizonSide(2)) == false
        move!(r, HorizonSide(2))
        putmarker!(r)
    end
    putmarker!(r)
    
    while isborder(r, HorizonSide(1)) == false
        move!(r, HorizonSide(1))
        putmarker!(r)
    end
    putmarker!(r)

end 
perimeter_markers(r)