# UltiSnips

## Spec
```snippets
snippet {trigger} ["description" [options]]
{snippet body}
endsnippet

```

### Options
- `A`: автоматическое расширение (т.е. фрагмент с будет расширен сразу после trigger, без необходимости нажатия g:UltiSnipsExpandTrigger)
- `r`: позволяет использовать регулярные выражения в триггере фрагмента
- `b`: расширяет фрагменты только в том случае, если trigger вводится в начале строки
- `i`: расширяет фрагменты независимо от того, где trigger вводится (по умолчанию фрагменты расширяются только в том случае, если trigger начинается с новой строки или предваряется пробелом)

### Example
#### 1
```snippets
snippet ff "The LaTeX \frac{}{} command"
\frac{$1}{${2: description for second selection}}$0
endsnippet # comment
```
#### 2
```snippets
snippet env "New LaTeX environment" b
\begin{$1} # begin & end will be written parallel
    $2
\end{$1}
$0
endsnippet
```
