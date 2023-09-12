# ISO 3166 Standard
"Codes for the representation of names of countries and their subdivisions." This implementation does not include subdivisions, only countries, Alpha-2 & Alpha-3 codes, and numeric codes.

## Module
Add the following to your `build.zig`:
```Zig
const module_iso3166 = b.createModule(.{
    .source_file = .{
        .path = "lib/iso3166/iso3166.zig",
    },
});

exe.addModule("iso3166", module_iso3166);
```

## Usage
Example:
```Zig
const std = @import("std");
const Iso3166 = @import("iso3166");

const country = Iso3166.init(.pol);
std.log.info("Made in {s} (Alpha3={s}, Alpha2={s}, Numeric={s}).", .{
    country.code.nameShortAscii(),
    country.code.alpha3CodeString(),
    country.code.alpha2CodeString(),
    country.code.numericString(),
});
```
