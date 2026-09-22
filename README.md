# sv-learn

Josh’s SystemVerilog / digital-logic **learning** repository (foundation phase).

## Rules
- Human-First / AI-Last — see Personal OS `LEARNING_PROTOCOL.md`.
- No agentic tools may auto-edit learning RTL here until concepts graduate.
- You write modules in `rtl/` and tests in `tb/` yourself.

## Layout
- `rtl/` — your modules (empty until you write them)
- `tb/` — your testbenches
- `notes/` — drawings, predictions, session notes
- `docs/` — links / references you collect
- `scripts/` — sim helpers you grow over time

## Day-1 workflow (Icarus)
```bash
# after you have rtl/foo.sv and tb/foo_tb.sv:
iverilog -g2012 -o sim.vvp tb/foo_tb.sv rtl/foo.sv
vvp sim.vvp
# if you dump waves:
gtkwave dump.vcd
```

Fall 4×4 systolic project: **PROPOSED** — not this repo’s job until mid-October activation.
