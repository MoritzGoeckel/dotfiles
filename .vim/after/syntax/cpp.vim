syntax keyword Branching return if else while for
syntax match Namespace '\I\i\+::'           " anything::
syntax match StdNamespace '\(std\|ltt\)::'  " std:: or ltt::
syntax match PtrRefType '\>\(*\|&\)'        " *& after end of word
syntax match DerefAddr '\(*\|&\)\<'         " *& before beginning of word

"syntax match StdType '\(std\|ltt\)::\i\+'
"syntax match StdCall '\(std\|ltt\)::\i\+('

