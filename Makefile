subunits:
	rm geodata/subunits.json
	rm geodata/places.json
	ogr2ogr \
	    -f GeoJSON \
	    -where "ADM0_A3 IN ('GBR', 'IRL')" \
	    geodata/subunits.json \
	    geodata/raw/ne_10m_admin_0_map_subunits.shp
	ogr2ogr \
	    -f GeoJSON \
	    -where "ISO_A2 = 'GB' AND SCALERANK < 8" \
	    geodata/places.json \
	    geodata/raw/ne_10m_populated_places.shp
