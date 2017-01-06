import Control.Concurrent
import Control.Monad


main = do
  tid1 <- forkIO $ forever $ do
    threadDelay 1000000
    putStr "hello"
  threadDelay 500000
  tid2 <- forkIO $ forever $ do
    threadDelay 1000000
    putStrLn "world"

  putStrLn $ "Two worlds are running at " ++
    show tid1 ++ " and " ++ show tid2 ++ "."

  threadDelay 10000000
