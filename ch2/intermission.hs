circleArea :: Floating a => a -> a
circleArea = (*) pi . flip (^) 2
