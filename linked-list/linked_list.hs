-- linked_list.hs
main :: IO ()
main = do
    let arr = [1, 2, 3, 4, 5]
    putStrLn $ "Array elements are: " ++ unwords (map show arr)
