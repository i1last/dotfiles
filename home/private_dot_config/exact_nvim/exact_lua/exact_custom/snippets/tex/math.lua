local get_visual = require("custom.data.luasnip-helper-funcs")

return {
	s(
		{
      trig = "([^%a])mm",
      wordTrig = false,
      regTrig = true
    },
		fmta(
      [[<>$<>$]],
      {
			  f(function(_, snip)
				  return snip.captures[1]
			  end),
			  d(1, get_visual),
      }
    )
	),
}
