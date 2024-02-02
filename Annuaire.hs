{-# LANGUAGE FlexibleInstances #-}

data Student = Student {
    name :: String,
    surname :: String,
    email:: String
}

instance Show Student where
    show (Student name surname email) = "Student: " ++ name ++ " (Surname: " ++ show surname ++ ", Email: " ++ show email ++ ")"

searchStudent :: [Student] -> Student -> Maybe (String, String)
searchStudent students a
    | any (\s -> name a == name s) students = Just (surname a, email a)
    | otherwise = Nothing


students :: [Student]
students = [ Student "Alice" "jean" "alice@gmail.com"
           , Student "Bob" "sponge" "bob@gmail.com"
           , Student "Charlie" "evans" "charlie@gmail.com"
           ]
gen :: Student
gen = Student "Bob" "Sponge" "bob@gmail.com"