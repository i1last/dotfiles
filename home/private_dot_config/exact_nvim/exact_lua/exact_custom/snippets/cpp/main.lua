local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
	s(
		{
			trig = "intmain",
			dscr = "int main() {return 0;}",
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmta(
			[[
        int main() {
          <>

          return 0;
        }
      ]],
			{
				i(0),
			}
		),
		{
			condition = line_begin,
		}
	),
}
