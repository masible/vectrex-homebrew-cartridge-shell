all: vectrex-cartridge-shell-bottom-wireout.stl vectrex-cartridge-shell-bottom-retroelectronik.stl vectrex-cartridge-shell-top-wireout.stl vectrex-cartridge-shell-bottom-wireout.3mf vectrex-cartridge-shell-bottom-retroelectronik.3mf vectrex-cartridge-shell-top-wireout.3mf

vectrex-cartridge-shell-bottom-wireout.stl: vectrex-homebrew-cartridge-shell.scad
	echo "use <vectrex-homebrew-cartridge-shell.scad> shell_wireout_variant();" | openscad -o $@ -

vectrex-cartridge-shell-top-wireout.stl: vectrex-homebrew-cartridge-shell.scad
	echo "use <vectrex-homebrew-cartridge-shell.scad> shell_top_wireout_variant();" | openscad -o $@ -

vectrex-cartridge-shell-bottom-wireout.3mf: vectrex-homebrew-cartridge-shell.scad
	echo "use <vectrex-homebrew-cartridge-shell.scad> shell_wireout_variant();" | openscad -o $@ -

vectrex-cartridge-shell-top-wireout.3mf: vectrex-homebrew-cartridge-shell.scad
	echo "use <vectrex-homebrew-cartridge-shell.scad> shell_top_wireout_variant();" | openscad -o $@ -

vectrex-cartridge-shell-bottom-retroelectronik.stl: vectrex-homebrew-cartridge-shell.scad
	echo "use <vectrex-homebrew-cartridge-shell.scad> shell_retroelectronik_variant();" | openscad -o $@ -

vectrex-cartridge-shell-top-retroelectronik.stl: vectrex-homebrew-cartridge-shell.scad
	echo "use <vectrex-homebrew-cartridge-shell.scad> shell_top_retroelectronik_variant();" | openscad -o $@ -

vectrex-cartridge-shell-bottom-retroelectronik.3mf: vectrex-homebrew-cartridge-shell.scad
	echo "use <vectrex-homebrew-cartridge-shell.scad> shell_retroelectronik_variant();" | openscad -o $@ -

vectrex-cartridge-shell-top-retroelectronik.3mf: vectrex-homebrew-cartridge-shell.scad
	echo "use <vectrex-homebrew-cartridge-shell.scad> shell_top_retroelectronik_variant();" | openscad -o $@ -

clean:
	rm -f vectrex-cartridge-shell-bottom-wireout.stl vectrex-cartridge-shell-bottom-retroelectronik.stl vectrex-cartridge-shell-top-wireout.stl vectrex-cartridge-shell-bottom-wireout.3mf vectrex-cartridge-shell-bottom-retroelectronik.3mf vectrex-cartridge-shell-top-wireout.3mf vectrex-cartridge-shell-top-retroelectronik.stl vectrex-cartridge-shell-top-retroelectronik.3mf
