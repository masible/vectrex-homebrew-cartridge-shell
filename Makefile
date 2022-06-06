all: vectrex-cartridge-shell-bottom-wireout.stl vectrex-cartridge-shell-bottom-test-cart.stl

vectrex-cartridge-shell-bottom-wireout.stl: vectrex-cartridge-shell-updated.scad
	echo "use <vectrex-cartridge-shell-updated.scad> shell_wireout_variant();" | openscad -o $@ -

vectrex-cartridge-shell-bottom-test-cart.stl: vectrex-cartridge-shell-updated.scad
	echo "use <vectrex-cartridge-shell-updated.scad> shell_test_cart_variant();" | openscad -o $@ -

clean:
	rm -f vectrex-cartridge-shell-bottom-test-cart.stl vectrex-cartridge-shell-bottom-wireout.stl
