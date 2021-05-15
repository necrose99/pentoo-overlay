SRC_URI="$(cargo_crate_uris ${CRATES})
https://github.com/edu4rdshl/unimap/archive/${PV}.tar.gz -> 


### hot fix for URI
## i hate sed/regex like hieroglyphics 

# sed -i 's/SRC_URI="$(cargo_crate_uris ${CRATES})/SRC_URI="$(cargo_crate_uris ${CRATES}) https://github.com/edu4rdshl/unimap/archive/${PV}.tar.gz ->/g'