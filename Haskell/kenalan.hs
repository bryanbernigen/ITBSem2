hello = do
 print "My first Haskell Program"
 print "Hello, World!"

name = do
 name <- getLine
 print("Hello, " ++ name)
 
add a b = a + b

g = \x y -> x * y *  min x y

main = putStrLn "Hello, World!"

a = print "Hello, World!"