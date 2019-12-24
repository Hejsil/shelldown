# Shelldown

Shelldown is a set of scripts that make your shell into a markup language. In fact, this README was generated with Shelldown! See `README.sh`.

Shelldown currently supports outputting html, markdown and to the terminal with ansi escapes. The output is determined by the `SD_LANG` environment variable.

## Examples

All examples have `SD_LANG` set to `html`

### `code`

```bash
code -l sh 'echo "Hello World"'
```

```html
<pre><code class="language-sh">echo &quot;Hello World&quot;</code></pre>
```

### `format`

```bash
format 'Some ' -i 'text' ' ' -b 'and' ' ' -c 'code'
```

```html
Some <em>text</em> <strong>and</strong> <code>code</code>
```

### `header`

```bash
format 'Header' | header
```

```html
<h1>Header</h1>
```

---
```bash
format 'Header' | header -l 4
```

```html
<h4>Header</h4>
```

### `hr`

```bash
hr
```

```html
<hr/>
```

### `paragraph`

```bash
format 'text' | paragraph
```

```html
<p>text</p>
```

