const std = @import("std");

const Self = @This();

code: Alpha3Code,

pub fn init(country_code: Alpha3Code) Self {
    return Self{ .code = country_code };
}

pub const Alpha3Code = enum {
    abw,
    afg,
    ago,
    aia,
    ala,
    alb,
    @"and",
    are,
    arg,
    arm,
    @"asm",
    ata,
    atf,
    atg,
    aus,
    aut,
    aze,
    bdi,
    bel,
    ben,
    bes,
    bfa,
    bgd,
    bgr,
    bhr,
    bhs,
    bih,
    blm,
    blr,
    blz,
    bmu,
    bol,
    bra,
    brb,
    brn,
    btn,
    bvt,
    bwa,
    caf,
    can,
    cck,
    che,
    chl,
    chn,
    civ,
    cmr,
    cod,
    cog,
    cok,
    col,
    com,
    cpv,
    cri,
    cub,
    cuw,
    cxr,
    cym,
    cyp,
    cze,
    deu,
    dji,
    dma,
    dnk,
    dom,
    dza,
    ecu,
    egy,
    eri,
    esh,
    esp,
    est,
    eth,
    fin,
    fji,
    flk,
    fra,
    fro,
    fsm,
    gab,
    gbr,
    geo,
    ggy,
    gha,
    gib,
    gin,
    glp,
    gmb,
    gnb,
    gnq,
    grc,
    grd,
    grl,
    gtm,
    guf,
    gum,
    guy,
    hkg,
    hmd,
    hnd,
    hrv,
    hti,
    hun,
    idn,
    imn,
    ind,
    iot,
    irl,
    irn,
    irq,
    isl,
    isr,
    ita,
    jam,
    jey,
    jor,
    jpn,
    kaz,
    ken,
    kgz,
    khm,
    kir,
    kna,
    kor,
    kwt,
    lao,
    lbn,
    lbr,
    lby,
    lca,
    lie,
    lka,
    lso,
    ltu,
    lux,
    lva,
    mac,
    maf,
    mar,
    mco,
    mda,
    mdg,
    mdv,
    mex,
    mhl,
    mkd,
    mli,
    mlt,
    mmr,
    mne,
    mng,
    mnp,
    moz,
    mrt,
    msr,
    mtq,
    mus,
    mwi,
    mys,
    myt,
    nam,
    ncl,
    ner,
    nfk,
    nga,
    nic,
    niu,
    nld,
    nor,
    npl,
    nru,
    nzl,
    omn,
    pak,
    pan,
    pcn,
    per,
    phl,
    plw,
    png,
    pol,
    pri,
    prk,
    prt,
    pry,
    pse,
    pyf,
    qat,
    reu,
    rou,
    rus,
    rwa,
    sau,
    sdn,
    sen,
    sgp,
    sgs,
    shn,
    sjm,
    slb,
    sle,
    slv,
    smr,
    som,
    spm,
    srb,
    ssd,
    stp,
    sur,
    svk,
    svn,
    swe,
    swz,
    sxm,
    syc,
    syr,
    tca,
    tcd,
    tgo,
    tha,
    tjk,
    tkl,
    tkm,
    tls,
    ton,
    tto,
    tun,
    tur,
    tuv,
    twn,
    tza,
    uga,
    ukr,
    umi,
    ury,
    usa,
    uzb,
    vat,
    vct,
    ven,
    vgb,
    vir,
    vnm,
    vut,
    wlf,
    wsm,
    yem,
    zaf,
    zmb,
    zwe,

    pub fn alpha3CodeString(self: Alpha3Code) [3]u8 {
        var code: [3]u8 = undefined;
        _ = std.ascii.upperString(&code, @tagName(self));
        return code;
    }

    pub fn alpha2CodeString(self: Alpha3Code) [2]u8 {
        var code: [2]u8 = undefined;
        std.ascii.upperString(code, @tagName(Alpha2Code[self]));
        return code;
    }

    pub fn numericString(self: Alpha3Code) [3]u8 {
        return switch (self) {
            .abw => "533",
            .afg => "004",
            .ago => "024",
            .aia => "660",
            .ala => "248",
            .alb => "008",
            .@"and" => "020",
            .are => "784",
            .arg => "032",
            .arm => "051",
            .@"asm" => "016",
            .ata => "010",
            .atf => "260",
            .atg => "028",
            .aus => "036",
            .aut => "040",
            .aze => "031",
            .bdi => "108",
            .bel => "056",
            .ben => "204",
            .bes => "535",
            .bfa => "854",
            .bgd => "050",
            .bgr => "100",
            .bhr => "048",
            .bhs => "044",
            .bih => "070",
            .blm => "652",
            .blr => "112",
            .blz => "084",
            .bmu => "060",
            .bol => "068",
            .bra => "076",
            .brb => "052",
            .brn => "096",
            .btn => "064",
            .bvt => "074",
            .bwa => "072",
            .caf => "140",
            .can => "124",
            .cck => "166",
            .che => "756",
            .chl => "152",
            .chn => "156",
            .civ => "384",
            .cmr => "120",
            .cod => "180",
            .cog => "178",
            .cok => "184",
            .col => "170",
            .com => "174",
            .cpv => "132",
            .cri => "188",
            .cub => "192",
            .cuw => "531",
            .cxr => "162",
            .cym => "136",
            .cyp => "196",
            .cze => "203",
            .deu => "276",
            .dji => "262",
            .dma => "212",
            .dnk => "208",
            .dom => "214",
            .dza => "012",
            .ecu => "218",
            .egy => "818",
            .eri => "232",
            .esh => "732",
            .esp => "724",
            .est => "233",
            .eth => "231",
            .fin => "246",
            .fji => "242",
            .flk => "238",
            .fra => "250",
            .fro => "234",
            .fsm => "583",
            .gab => "266",
            .gbr => "826",
            .geo => "268",
            .ggy => "831",
            .gha => "288",
            .gib => "292",
            .gin => "324",
            .glp => "312",
            .gmb => "270",
            .gnb => "624",
            .gnq => "226",
            .grc => "300",
            .grd => "308",
            .grl => "304",
            .gtm => "320",
            .guf => "254",
            .gum => "316",
            .guy => "328",
            .hkg => "344",
            .hmd => "334",
            .hnd => "340",
            .hrv => "191",
            .hti => "332",
            .hun => "348",
            .idn => "360",
            .imn => "833",
            .ind => "356",
            .iot => "086",
            .irl => "372",
            .irn => "364",
            .irq => "368",
            .isl => "352",
            .isr => "376",
            .ita => "380",
            .jam => "388",
            .jey => "832",
            .jor => "400",
            .jpn => "392",
            .kaz => "398",
            .ken => "404",
            .kgz => "417",
            .khm => "116",
            .kir => "296",
            .kna => "659",
            .kor => "410",
            .kwt => "414",
            .lao => "418",
            .lbn => "422",
            .lbr => "430",
            .lby => "434",
            .lca => "662",
            .lie => "438",
            .lka => "144",
            .lso => "426",
            .ltu => "440",
            .lux => "442",
            .lva => "428",
            .mac => "446",
            .maf => "663",
            .mar => "504",
            .mco => "492",
            .mda => "498",
            .mdg => "450",
            .mdv => "462",
            .mex => "484",
            .mhl => "584",
            .mkd => "807",
            .mli => "466",
            .mlt => "470",
            .mmr => "104",
            .mne => "499",
            .mng => "496",
            .mnp => "580",
            .moz => "508",
            .mrt => "478",
            .msr => "500",
            .mtq => "474",
            .mus => "480",
            .mwi => "454",
            .mys => "458",
            .myt => "175",
            .nam => "516",
            .ncl => "540",
            .ner => "562",
            .nfk => "574",
            .nga => "566",
            .nic => "558",
            .niu => "570",
            .nld => "528",
            .nor => "578",
            .npl => "524",
            .nru => "520",
            .nzl => "554",
            .omn => "512",
            .pak => "586",
            .pan => "591",
            .pcn => "612",
            .per => "604",
            .phl => "608",
            .plw => "585",
            .png => "598",
            .pol => "616",
            .pri => "630",
            .prk => "408",
            .prt => "620",
            .pry => "600",
            .pse => "275",
            .pyf => "258",
            .qat => "634",
            .reu => "638",
            .rou => "642",
            .rus => "643",
            .rwa => "646",
            .sau => "682",
            .sdn => "729",
            .sen => "686",
            .sgp => "702",
            .sgs => "239",
            .shn => "654",
            .sjm => "744",
            .slb => "090",
            .sle => "694",
            .slv => "222",
            .smr => "674",
            .som => "706",
            .spm => "666",
            .srb => "688",
            .ssd => "728",
            .stp => "678",
            .sur => "740",
            .svk => "703",
            .svn => "705",
            .swe => "752",
            .swz => "748",
            .sxm => "534",
            .syc => "690",
            .syr => "760",
            .tca => "796",
            .tcd => "148",
            .tgo => "768",
            .tha => "764",
            .tjk => "762",
            .tkl => "772",
            .tkm => "795",
            .tls => "626",
            .ton => "776",
            .tto => "780",
            .tun => "788",
            .tur => "792",
            .tuv => "798",
            .twn => "158",
            .tza => "834",
            .uga => "800",
            .ukr => "804",
            .umi => "581",
            .ury => "858",
            .usa => "840",
            .uzb => "860",
            .vat => "336",
            .vct => "670",
            .ven => "862",
            .vgb => "092",
            .vir => "850",
            .vnm => "704",
            .vut => "548",
            .wlf => "876",
            .wsm => "882",
            .yem => "887",
            .zaf => "710",
            .zmb => "894",
            .zwe => "716",
        };
    }

    pub fn numericInteger(self: Alpha3Code) u10 {
        return std.fmt.parseInt(u10, Self.numericString(self), 10);
    }

    pub fn nameShortUtf8(self: Alpha3Code) []const u8 {
        return switch (self) {
            .abw => "Aruba",
            .afg => "Afghanistan",
            .ago => "Angola",
            .aia => "Anguilla",
            .ala => "Åland Islands",
            .alb => "Albania",
            .@"and" => "Andorra",
            .are => "United Arab Emirates (the)",
            .arg => "Argentina",
            .arm => "Armenia",
            .@"asm" => "American Samoa",
            .ata => "Antarctica",
            .atf => "French Southern Territories (the)",
            .atg => "Antigua and Barbuda",
            .aus => "Australia",
            .aut => "Austria",
            .aze => "Azerbaijan",
            .bdi => "Burundi",
            .bel => "Belgium",
            .ben => "Benin",
            .bes => "Bonaire, Sint Eustatius and Saba",
            .bfa => "Burkina Faso",
            .bgd => "Bangladesh",
            .bgr => "Bulgaria",
            .bhr => "Bahrain",
            .bhs => "Bahamas (the)",
            .bih => "Bosnia and Herzegovina",
            .blm => "Saint Barthélemy",
            .blr => "Belarus",
            .blz => "Belize",
            .bmu => "Bermuda",
            .bol => "Bolivia (Plurinational State of)",
            .bra => "Brazil",
            .brb => "Barbados",
            .brn => "Brunei Darussalam",
            .btn => "Bhutan",
            .bvt => "Bouvet Island",
            .bwa => "Botswana",
            .caf => "Central African Republic (the)",
            .can => "Canada",
            .cck => "Cocos (Keeling) Islands (the)",
            .che => "Switzerland",
            .chl => "Chile",
            .chn => "China",
            .civ => "Côte d'Ivoire",
            .cmr => "Cameroon",
            .cod => "Congo (the Democratic Republic of the)",
            .cog => "Congo (the)",
            .cok => "Cook Islands (the)",
            .col => "Colombia",
            .com => "Comoros (the)",
            .cpv => "Cabo Verde",
            .cri => "Costa Rica",
            .cub => "Cuba",
            .cuw => "Curaçao",
            .cxr => "Christmas Island",
            .cym => "Cayman Islands (the)",
            .cyp => "Cyprus",
            .cze => "Czechia",
            .deu => "Germany",
            .dji => "Djibouti",
            .dma => "Dominica",
            .dnk => "Denmark",
            .dom => "Dominican Republic (the)",
            .dza => "Algeria",
            .ecu => "Ecuador",
            .egy => "Egypt",
            .eri => "Eritrea",
            .esh => "Western Sahara",
            .esp => "Spain",
            .est => "Estonia",
            .eth => "Ethiopia",
            .fin => "Finland",
            .fji => "Fiji",
            .flk => "Falkland Islands (the) [Malvinas]",
            .fra => "France",
            .fro => "Faroe Islands (the)",
            .fsm => "Micronesia (Federated States of)",
            .gab => "Gabon",
            .gbr => "United Kingdom of Great Britain and Northern Ireland (the)",
            .geo => "Georgia",
            .ggy => "Guernsey",
            .gha => "Ghana",
            .gib => "Gibraltar",
            .gin => "Guinea",
            .glp => "Guadeloupe",
            .gmb => "Gambia (the)",
            .gnb => "Guinea-Bissau",
            .gnq => "Equatorial Guinea",
            .grc => "Greece",
            .grd => "Grenada",
            .grl => "Greenland",
            .gtm => "Guatemala",
            .guf => "French Guiana",
            .gum => "Guam",
            .guy => "Guyana",
            .hkg => "Hong Kong",
            .hmd => "Heard Island and McDonald Islands",
            .hnd => "Honduras",
            .hrv => "Croatia",
            .hti => "Haiti",
            .hun => "Hungary",
            .idn => "Indonesia",
            .imn => "Isle of Man",
            .ind => "India",
            .iot => "British Indian Ocean Territory (the)",
            .irl => "Ireland",
            .irn => "Iran (Islamic Republic of)",
            .irq => "Iraq",
            .isl => "Iceland",
            .isr => "Israel",
            .ita => "Italy",
            .jam => "Jamaica",
            .jey => "Jersey",
            .jor => "Jordan",
            .jpn => "Japan",
            .kaz => "Kazakhstan",
            .ken => "Kenya",
            .kgz => "Kyrgyzstan",
            .khm => "Cambodia",
            .kir => "Kiribati",
            .kna => "Saint Kitts and Nevis",
            .kor => "Korea (the Republic of)",
            .kwt => "Kuwait",
            .lao => "Lao People's Democratic Republic (the)",
            .lbn => "Lebanon",
            .lbr => "Liberia",
            .lby => "Libya",
            .lca => "Saint Lucia",
            .lie => "Liechtenstein",
            .lka => "Sri Lanka",
            .lso => "Lesotho",
            .ltu => "Lithuania",
            .lux => "Luxembourg",
            .lva => "Latvia",
            .mac => "Macao",
            .maf => "Saint Martin (French part)",
            .mar => "Morocco",
            .mco => "Monaco",
            .mda => "Moldova (the Republic of)",
            .mdg => "Madagascar",
            .mdv => "Maldives",
            .mex => "Mexico",
            .mhl => "Marshall Islands (the)",
            .mkd => "North Macedonia",
            .mli => "Mali",
            .mlt => "Malta",
            .mmr => "Myanmar",
            .mne => "Montenegro",
            .mng => "Mongolia",
            .mnp => "Northern Mariana Islands (the)",
            .moz => "Mozambique",
            .mrt => "Mauritania",
            .msr => "Montserrat",
            .mtq => "Martinique",
            .mus => "Mauritius",
            .mwi => "Malawi",
            .mys => "Malaysia",
            .myt => "Mayotte",
            .nam => "Namibia",
            .ncl => "New Caledonia",
            .ner => "Niger (the)",
            .nfk => "Norfolk Island",
            .nga => "Nigeria",
            .nic => "Nicaragua",
            .niu => "Niue",
            .nld => "Netherlands (Kingdom of the)",
            .nor => "Norway",
            .npl => "Nepal",
            .nru => "Nauru",
            .nzl => "New Zealand",
            .omn => "Oman",
            .pak => "Pakistan",
            .pan => "Panama",
            .pcn => "Pitcairn",
            .per => "Peru",
            .phl => "Philippines (the)",
            .plw => "Palau",
            .png => "Papua New Guinea",
            .pol => "Poland",
            .pri => "Puerto Rico",
            .prk => "Korea (the Democratic People's Republic of)",
            .prt => "Portugal",
            .pry => "Paraguay",
            .pse => "Palestine, State of",
            .pyf => "French Polynesia",
            .qat => "Qatar",
            .reu => "Réunion",
            .rou => "Romania",
            .rus => "Russian Federation (the)",
            .rwa => "Rwanda",
            .sau => "Saudi Arabia",
            .sdn => "Sudan (the)",
            .sen => "Senegal",
            .sgp => "Singapore",
            .sgs => "South Georgia and the South Sandwich Islands",
            .shn => "Saint Helena, Ascension and Tristan da Cunha",
            .sjm => "Svalbard and Jan Mayen",
            .slb => "Solomon Islands",
            .sle => "Sierra Leone",
            .slv => "El Salvador",
            .smr => "San Marino",
            .som => "Somalia",
            .spm => "Saint Pierre and Miquelon",
            .srb => "Serbia",
            .ssd => "South Sudan",
            .stp => "Sao Tome and Principe",
            .sur => "Suriname",
            .svk => "Slovakia",
            .svn => "Slovenia",
            .swe => "Sweden",
            .swz => "Eswatini",
            .sxm => "Sint Maarten (Dutch part)",
            .syc => "Seychelles",
            .syr => "Syrian Arab Republic (the)",
            .tca => "Turks and Caicos Islands (the)",
            .tcd => "Chad",
            .tgo => "Togo",
            .tha => "Thailand",
            .tjk => "Tajikistan",
            .tkl => "Tokelau",
            .tkm => "Turkmenistan",
            .tls => "Timor-Leste",
            .ton => "Tonga",
            .tto => "Trinidad and Tobago",
            .tun => "Tunisia",
            .tur => "Türkiye",
            .tuv => "Tuvalu",
            .twn => "Taiwan (Province of China)",
            .tza => "Tanzania, the United Republic of",
            .uga => "Uganda",
            .ukr => "Ukraine",
            .umi => "United States Minor Outlying Islands (the)",
            .ury => "Uruguay",
            .usa => "United States of America (the)",
            .uzb => "Uzbekistan",
            .vat => "Holy See (the)",
            .vct => "Saint Vincent and the Grenadines",
            .ven => "Venezuela (Bolivarian Republic of)",
            .vgb => "Virgin Islands (British)",
            .vir => "Virgin Islands (U.S.)",
            .vnm => "Viet Nam",
            .vut => "Vanuatu",
            .wlf => "Wallis and Futuna",
            .wsm => "Samoa",
            .yem => "Yemen",
            .zaf => "South Africa",
            .zmb => "Zambia",
            .zwe => "Zimbabwe",
        };
    }

    pub fn nameShortAscii(self: Alpha3Code) []const u8 {
        return switch (self) {
            .ala => "Aland Islands",
            .blm => "Saint Barthelemy",
            .civ => "Cote d'Ivoire",
            .cuw => "Curacao",
            .tur => "Turkiye",
            else => nameShortUtf8(self),
        };
    }
};

pub const Alpha2Code = enum(Alpha3Code) {
    aw = .abw,
    af = .afg,
    ao = .ago,
    ai = .aia,
    ax = .ala,
    al = .alb,
    ad = .@"and",
    ae = .are,
    ar = .arg,
    am = .arm,
    as = .@"asm",
    aq = .ata,
    tf = .atf,
    ag = .atg,
    au = .aus,
    at = .aut,
    az = .aze,
    bi = .bdi,
    be = .bel,
    bj = .ben,
    bq = .bes,
    bf = .bfa,
    bd = .bgd,
    bg = .bgr,
    bh = .bhr,
    bs = .bhs,
    ba = .bih,
    bl = .blm,
    by = .blr,
    bz = .blz,
    bm = .bmu,
    bo = .bol,
    br = .bra,
    bb = .brb,
    bn = .brn,
    bt = .btn,
    bv = .bvt,
    bw = .bwa,
    cf = .caf,
    ca = .can,
    cc = .cck,
    ch = .che,
    cl = .chl,
    cn = .chn,
    ci = .civ,
    cm = .cmr,
    cd = .cod,
    cg = .cog,
    ck = .cok,
    co = .col,
    km = .com,
    cv = .cpv,
    cr = .cri,
    cu = .cub,
    cw = .cuw,
    cx = .cxr,
    ky = .cym,
    cy = .cyp,
    cz = .cze,
    de = .deu,
    dj = .dji,
    dm = .dma,
    dk = .dnk,
    do = .dom,
    dz = .dza,
    ec = .ecu,
    eg = .egy,
    er = .eri,
    eh = .esh,
    es = .esp,
    ee = .est,
    et = .eth,
    fi = .fin,
    fj = .fji,
    fk = .flk,
    fr = .fra,
    fo = .fro,
    fm = .fsm,
    ga = .gab,
    gb = .gbr,
    ge = .geo,
    gg = .ggy,
    gh = .gha,
    gi = .gib,
    gn = .gin,
    gp = .glp,
    gm = .gmb,
    gw = .gnb,
    gq = .gnq,
    gr = .grc,
    gd = .grd,
    gl = .grl,
    gt = .gtm,
    gf = .guf,
    gu = .gum,
    gy = .guy,
    hk = .hkg,
    hm = .hmd,
    hn = .hnd,
    hr = .hrv,
    ht = .hti,
    hu = .hun,
    id = .idn,
    im = .imn,
    in = .ind,
    io = .iot,
    ie = .irl,
    ir = .irn,
    iq = .irq,
    is = .isl,
    il = .isr,
    it = .ita,
    jm = .jam,
    je = .jey,
    jo = .jor,
    jp = .jpn,
    kz = .kaz,
    ke = .ken,
    kg = .kgz,
    kh = .khm,
    ki = .kir,
    kn = .kna,
    kr = .kor,
    kw = .kwt,
    la = .lao,
    lb = .lbn,
    lr = .lbr,
    ly = .lby,
    lc = .lca,
    li = .lie,
    lk = .lka,
    ls = .lso,
    lt = .ltu,
    lu = .lux,
    lv = .lva,
    mo = .mac,
    mf = .maf,
    ma = .mar,
    mc = .mco,
    md = .mda,
    mg = .mdg,
    mv = .mdv,
    mx = .mex,
    mh = .mhl,
    mk = .mkd,
    ml = .mli,
    mt = .mlt,
    mm = .mmr,
    me = .mne,
    mn = .mng,
    mp = .mnp,
    mz = .moz,
    mr = .mrt,
    ms = .msr,
    mq = .mtq,
    mu = .mus,
    mw = .mwi,
    my = .mys,
    yt = .myt,
    na = .nam,
    nc = .ncl,
    ne = .ner,
    nf = .nfk,
    ng = .nga,
    ni = .nic,
    nu = .niu,
    nl = .nld,
    no = .nor,
    np = .npl,
    nr = .nru,
    nz = .nzl,
    om = .omn,
    pk = .pak,
    pa = .pan,
    pn = .pcn,
    pe = .per,
    ph = .phl,
    pw = .plw,
    pg = .png,
    pl = .pol,
    pr = .pri,
    kp = .prk,
    pt = .prt,
    py = .pry,
    ps = .pse,
    pf = .pyf,
    qa = .qat,
    re = .reu,
    ro = .rou,
    ru = .rus,
    rw = .rwa,
    sa = .sau,
    sd = .sdn,
    sn = .sen,
    sg = .sgp,
    gs = .sgs,
    sh = .shn,
    sj = .sjm,
    sb = .slb,
    sl = .sle,
    sv = .slv,
    sm = .smr,
    so = .som,
    pm = .spm,
    rs = .srb,
    ss = .ssd,
    st = .stp,
    sr = .sur,
    sk = .svk,
    si = .svn,
    se = .swe,
    sz = .swz,
    sx = .sxm,
    sc = .syc,
    sy = .syr,
    tc = .tca,
    td = .tcd,
    tg = .tgo,
    th = .tha,
    tj = .tjk,
    tk = .tkl,
    tm = .tkm,
    tl = .tls,
    to = .ton,
    tt = .tto,
    tn = .tun,
    tr = .tur,
    tv = .tuv,
    tw = .twn,
    tz = .tza,
    ug = .uga,
    ua = .ukr,
    um = .umi,
    uy = .ury,
    us = .usa,
    uz = .uzb,
    va = .vat,
    vc = .vct,
    ve = .ven,
    vg = .vgb,
    vi = .vir,
    vn = .vnm,
    vu = .vut,
    wf = .wlf,
    ws = .wsm,
    ye = .yem,
    za = .zaf,
    zm = .zmb,
    zw = .zwe,
};
