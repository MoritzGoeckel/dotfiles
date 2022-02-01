syntax keyword Branching return if else while for
syntax match StdType '\(std\|ltt\)::\i\+'
syntax match StdCall '\(std\|ltt\)::\i\+('
syntax match PtrRefType '\>\(*\|&\)' " *& after end of word
syntax match DerefAddr '\(*\|&\)\<'  " *& before beginning of word

