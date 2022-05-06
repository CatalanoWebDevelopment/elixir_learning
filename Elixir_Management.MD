## Elixir Environment Management

Elixir runs off of Erlang, so compatible versions must be present. In order to determine if versions are compatible, make sure the Elixir is compiled with the same Erlang OTP: <br />
`Erlang/OTP 24 [erts-12.3.2] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1]` <br />
`Elixir 1.13.4 (compiled with Erlang/OTP 24)` <br />

- To view all available Erlang versions, run: <br />
`asdf list-all erlang`

- To view all available Elixir versiosn, run: <br />
`asdf list-all elixir`

- ASDF is used to manage various Elixir and Erlang environments. In order to install either Erlang or Elixir versions, run: <br />
`asdf install erlang { version }` or `asdf install elixir { version }`

- In order to set, globally or locally, the either versions, run: <br />
`asdf { global or local } erlang { version }` or `asdf { global or local } elixir { version }`

Ex. <br />
`$ asdf global erlang 22.1.7` <br />
`$ asdf global elixir 1.9.4-otp-22` <br />

- The Elixir version that is currently running can be found with: <br />
`elixir --version`

- To enter the Interactive Elixir Shell, run: <br />
`iex`  