# ISO 3166 Standard
"Codes for the representation of names of countries and their subdivisions." This implementation does not include subdivisions, only countries, Alpha-2 & Alpha-3 codes, and numeric codes.

## Usage
Example:
```Zig
const std = @import("std");
const Iso3166 = @import("iso3166");

pub fn main() void {
    const country = Iso3166.init(.pol);
    std.log.info("Made in {s} (Alpha3={s}, Alpha2={s}, Numeric={s}).", .{
        country.code.nameShortAscii(),
        country.code.alpha3CodeString(),
        country.code.alpha2CodeString(),
        country.code.numericString(),
    });
}
```
