return {
	s(
		{
			trig = "([^%a])for",
			dscr = "for (; ; ;) {%}",
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmta(
			[[
        <>for (<>; <>; <>) {
           <>
         }
      ]],
			{
				f(function(_, snip) return snip.captures[1] end),
				i(1),
        i(2),
        i(3),
        i(0)
			}
		)
	),
}
