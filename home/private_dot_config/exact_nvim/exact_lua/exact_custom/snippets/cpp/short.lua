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
	s(
		{
			trig = "([^%a])if",
			dscr = "if (%) ",
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmta(
			[[
        <>if (<>) <>
      ]],
			{
				f(function(_, snip) return snip.captures[1] end),
				i(1),
        i(0)
			}
		)
	),
}
