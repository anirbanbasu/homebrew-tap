# Homebrew Tap

This tap contains formulae that can be installed on macOS and Linux through [the Homebrew package manager](https://brew.sh/).

## Available formulae

- `bibtera`: A BibTeX translator using the Tera templating engine. See [project on GitHub](https://github.com/anirbanbasu/bibtera).
- `odir`: Ollama Downloader in Rust (ODIR) or _oh dear!_ is a successor to `ollama-downloader`. See [project on GitHub](https://github.com/anirbanbasu/odir).
- `ollama-downloader`: A library and Hugging Face model downloader for Ollama. See [project on GitHub](https://github.com/anirbanbasu/ollama-downloader).

## How do I install these formulae?

Run `brew install anirbanbasu/tap/<formula>`. If that does not work, then run `brew install --build-from-source anirbanbasu/tap/<formula>`.

You may also need to run `brew trust anirbanbasu/tap` to avoid warnings about installing formulae from an untrusted tap.

<!-- Or `brew tap anirbanbasu/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "anirbanbasu/tap"
brew "<formula>"
``` -->

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
