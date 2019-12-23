# Shelldown

Shelldown is a set of scripts that make your shell into a markup language. In fact, this README was generated with Shelldown! See `README.sh`.

Shelldown currently supports outputting html, markdown and to the terminal with ansi escapes. The output is determined by the `SD_LANG` environment variable.

## Examples

### code

```sh
SD_LANG=html src/code -l sh 'echo "Hello World"'
```

```
<pre><code class="language-sh">echo &quot;Hello World&quot;</code></pre>
```

### header

```sh
SD_LANG=html src/header 'Header'
```

```
<h1>Header</h1>
```

---
```sh
SD_LANG=html src/header -l 4 'Header'
```

```
<h4>Header</h4>
```

### hr

```sh
SD_LANG=html src/hr
```

```
<hr/>
```

### paragraph

```sh
SD_LANG=html src/paragraph 'Some ' -i 'text' ' ' -b 'and' ' ' -c 'code'
```

```
<p>Some <em>text</em> <strong>and</strong> <code>code</code></p>
```

