# Elbat (formerly known as Table)

This is a fork (*with renaming) of the Table package since upstream seems unmaintaned
The main purpose of `Elbat` is to be able to calculate tabular output also when
having html tags.
If you don't need this small feature, please use the official `Table` package.

[![hex][hex-image]][hex-url]

ascii tables for cli

## Installation

First, add `elbat` to your dependencies in `mix.exs`:

    def deps do
        [{:elbat, "~> 0.0.1"}]
    end

Then, update your dependencies:

    $ mix deps.get

## Usage

    iex> IO.write Elbat.table(%{"key"=> "value"})
    +-----|-------+
    | key | value |
    +-----|-------+

    iex> IO.write Elbat.table([%{"style"=> :ascii},
                               %{"style"=> :unicode}], :unicode)
    ┌──────────┐
    │ style    │
    ├──────────┤
    │ :ascii   │
    │ :unicode │
    └──────────┘

    iex> IO.write Elbat.table(%{"key"=> "multiline\nvalue"}, :unicode)
    ┌─────┬───────────┐
    │ key ╎ multiline │
    │     ╎ value     │
    └─────┴───────────┘

[hex-image]: https://img.shields.io/hexpm/v/elbat.svg?style=flat
[hex-url]: https://hex.pm/packages/elbat
