using HorizonSideRobots

r=Robot("7.sit", animate=true)

function exit(r)
    while isborder(r, HorizonSide(0)) == true
            move!(r, HorizonSide(3)) 
    end
    
end

exit(r)