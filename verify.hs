type Symbol = Char
type Mot = [Symbol]
type State = Int

data Automaton = Automaton{
    states :: [State],
    alphabet :: String,
    transitions :: (State, Symbol) -> State,
    initialState :: State,
    acceptStates :: [State]
}

verify :: Mot -> Bool
verify w = accept 0 w

accept :: State -> Mot ->Bool
accept q [] = elem q [1]
accept q (x:xs) = accept t xs where t = trans q x

trans :: State -> Symbol -> State
trans 0 'a' = 0
trans 0 'b' = 1
trans 1 'a' = 0
trans 1 'b' = 1

languageRecognition :: Automaton -> Mot -> Bool
languageRecognition automaton [] = initialState automaton `elem` acceptStates automaton
languageRecognition automaton word = acceptsFromState (initialState automaton) word

    where
        acceptsFromState :: State -> Mot -> Bool
        acceptsFromState state [] = state `elem` acceptStates automaton
        acceptsFromState state (c:cs) = acceptsFromState t cs where t = transitions automaton (state, c)      

myAutomaton :: Automaton
myAutomaton = Automaton
            { states = [1, 2]
            , alphabet = "01"
            , transitions = \(state, symbol) -> case (state, symbol) of
                            (1, '0') -> 1
                            (1, '1') -> 2
                            (2, '0') -> 2
                            (2, '1') -> 1
            , initialState = 1
            , acceptStates = [2]
            }