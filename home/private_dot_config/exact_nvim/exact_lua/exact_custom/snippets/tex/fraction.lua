local get_visual = require("custom.data.luasnip-helper-funcs")

return {
	s(
		{
			trig = "([^%a])ff",
			dscr = "frac for tex",
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmta(
			[[
        <>\frac{<>}{<>}
      ]],
			{
				f(function(_, snip)
					return snip.captures[1]
				end),
				i(1),
				i(2),
			}
		)
	),
}
