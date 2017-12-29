import Shape

data Picture = Primitive Shape
             | Combine Picture Picture
             | Rotate Double Picture
             | Translate Double Double Picture

testPicture : Picture
testPicture = Combine ?pic1 (Combine ?pic2 ?pic3)
