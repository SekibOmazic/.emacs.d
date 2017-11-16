# .emacs.d
My Emacs configuration

The first start of Emacs will be a bit slow, because it will first download all plugins it needs and also self-upgrade quelpa. 
But after that it will start smooth.

## Important note

- Tuareg, Merlin and ocamlformat which I user for OCaml development are installed via opam. 
- ocamlformat can be installed only for OCaml v4.04.0 or higher!
 -Since I need OCaml v4.02.3 for ReasonML experiments I switched to OCaml 4.05.0, installed ocamlformat and switched back to v4.02.3
- opam-user-setup.el has been created via `opam user-setup install` and moved to the `settings` directory
