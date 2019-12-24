# Shelldown

Shelldown is a set of scripts that make your shell into a markup language. In fact, this README was generated with Shelldown! See `README.sh`.

Shelldown currently supports outputting html, markdown and to the terminal with ansi escapes. The output is determined by the `SD_LANG` environment variable.

## Examples

### `code`

```bash
SD_LANG=html code -l sh 'echo "Hello World"'
```

```html
<pre><code class="language-sh">echo &quot;Hello World&quot;</code></pre>
```

### `format`

```bash
SD_LANG=html format 'Some ' -i 'text' ' ' -b 'and' ' ' -c 'code'
```

```html
Some <em>text</em> <strong>and</strong> <code>code</code>
```

### `header`

```bash
SD_LANG=html format 'Header' | SD_LANG=html header
```

```html
<h1>Header</h1>
```

---
```bash
SD_LANG=html format 'Header' | SD_LANG=html header -l 4
```

```html
<h4>Header</h4>
```

### `hr`

```bash
SD_LANG=html hr
```

```html
<hr/>
```

### `paragraph`

```bash
SD_LANG=html format 'text' | SD_LANG=html paragraph
```

```html
<p>text</p>
```

