import Test.Hspec
import System.IO
import Queens

main = hspec $ do

  describe "queens" $ do

    it "returns all the methods of 8-queens question" $ do
      let result = queens 8
      let r = queensN 4
      print result
      print r
      result `shouldSatisfy` \x -> length x > 0
