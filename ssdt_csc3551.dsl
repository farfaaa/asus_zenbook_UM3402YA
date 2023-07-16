DefinitionBlock ("", "SSDT", 2, "CUSTOM", "CSC3551", 0x00000003)
{
    External (_SB_.I2CD, DeviceObj)
    External (_SB_.I2CD.SPKR, DeviceObj)

    Scope (\_SB.I2CD.SPKR)
    {
        Name(_DSD, Package ()
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
            Package ()
            {
                Package () { "cirrus,dev-index", Package () { 0x40, 0x41 }},
                // reset-gpios: 2nd elem is GPIO index: Zero, One, 0x02 or 0x03 
                Package () { "reset-gpios", Package () {
                    SPKR, Zero, Zero, Zero,
                    SPKR, Zero, Zero, Zero
                } },
                // spk-id-gpios: 2nd elem is GPIO index: Zero, One, 0x02 or 0x03 
                Package () { "spk-id-gpios", Package () {
                    SPKR, One, Zero, Zero,
                    SPKR, One, Zero, Zero
                } },
                Package () { "cirrus,speaker-position", Package () { Zero, One } },
                // gpioX-func: 0 not used, 1 VSPK_SWITCH, 2: INTERRUPT, 3: SYNC
                Package () { "cirrus,gpio1-func", Package () { One, One } },
                Package () { "cirrus,gpio2-func", Package () { 0x02, 0x02 } },
                // boost-type: 0 internal, 1 external
                Package () { "cirrus,boost-type", Package () { One, One } },
                // gpio1-output-enable: true, false (default: false, ie: input)
                Package () { "cirrus,gpio1-output-enable", Package () { One, One } },
                // gpio1-src-select: 0 High Impedance (default), 1 GPIO, 2 Sync, 3 MCLK input
                Package () { "cirrus,gpio1-src-select", Package () { One, One } }
            }
        })
    }
}
