# My Yazi Config files

June 4 2026 - now works with Yazi 26.5.6

## iTerm2 rendering note

Yazi 26.x draws the hover highlight as a rounded "pill" using powerline glyphs.
If the rounded ends look notched/mismatched (or pane borders look broken), check:

1. Plugins must match the yazi version — after a yazi upgrade, run `ya pkg upgrade`
   (an outdated `full-border` plugin draws disconnected border lines).
2. In iTerm2: Settings → Profiles → Text → enable **"Use built-in Powerline glyphs"**
   so the rounded caps render pixel-perfect instead of using the font's glyphs.
   (If using transparency, also enable Profiles → Window → "Keep background colors opaque".)

To go back to square corners instead, add to `theme.toml`:

```toml
[indicator]
padding = { open = "█", close = "█" }
```

I've been using ranger for a while now, but it's still too slow sometimes. Yazi apparently fixes that, so I'm giving it a try! 

Unfortunately, I have a 4 years of muscle memory with ranger, and these config files reflect that. 
