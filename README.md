# KiCad DRC Checker
Runs the KiCad DRC (design rules checker) on the provided `.kicad_pcb` file

See [this list](https://github.com/stars/maartin0/lists/kicad-action-utils) for related actions

### Example
`.github/workflows/drc.yml`
```yml
name: Run DRC on PCB

on: push

jobs:
  run:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout to latest commit
        uses: actions/checkout@v4

      - name: Run DRC
        uses: maartin0/kicad-drc-action@v1
        with:
          pcb: project_name.kicad_pcb
```