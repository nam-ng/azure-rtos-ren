<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<smc>
    <general version="2.0.0.0">
        <configuration active="true" id="${configurationTypeReleaseID}">
            <property id="com.renesas.smc.service.project.buildArtefactType" values="com.renesas.smc.service.project.buildArtefactType.exe"/>
            <toolchain id="${toolChainID}">
                <option id="com.renesas.smc.toolchain.option.buildArtefactType" key="com.renesas.smc.toolchain.option.buildArtefactType.exe"/>
                <option id="com.renesas.smc.toolchain.option.rtos" key="com.renesas.smc.toolchain.option.rtos.azurertos">
                    <item id="com.renesas.smc.toolchain.option.rtos.azurertos" value="${packageVersion}"/>
                </option>
            </toolchain>
        </configuration>
        <platform id="${targetDevice}"/>
    </general>
    <tool id="SWComponent" version="1.0.0.0">
        <configuration inuse="true" name="r_bsp">
            <component display="r_bsp" id="r_bsp7.21" version="7.21">
                <gridItem id="BSP_CFG_ISTACK_BYTES" selectedIndex="0x800"/>
                <gridItem id="BSP_CFG_HEAP_BYTES" selectedIndex="0x800"/>
                <gridItem id="BSP_CFG_USER_CHARPUT_ENABLED" selectedIndex="1"/>
                <gridItem id="BSP_CFG_ROM_CACHE_ENABLE" selectedIndex="0"/>
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration inuse="true" name="r_cmt_rx">
            <component display="r_cmt_rx" id="r_cmt_rx5.40" version="5.40">
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration enable="true" exclude="false" inuse="true" name="threadx">
            <component display="Azure RTOS ThreadX" id="threadx${packageVersion}" version="${packageVersion}">
            </component>
            <source description="Code generator for Real-time OS" display="RTOS Configurator" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
        </configuration>
        <configuration enable="true" exclude="false" inuse="true" name="netxduo_addons">
            <component display="Azure RTOS NetX Duo Addons" id="netxduo_addons${packageVersion}" version="${packageVersion}"/>
            <source description="Code generator for Real-time OS" display="RTOS Configurator" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
        </configuration>
        <configuration enable="true" exclude="false" inuse="true" name="netxduo">
            <component display="Azure RTOS NetX Duo" id="netxduo${packageVersion}" version="${packageVersion}">
                <gridItem id="USE_NX_SECURE_TLS_DISABLE_TLS_1_1" selectedIndex="1"/>
                <gridItem id="USE_NX_DNS_CLIENT_USER_CREATE_PACKET_POOL" selectedIndex="1"/>
                <gridItem id="USE_NX_DNS_CLIENT_CLEAR_QUEUE" selectedIndex="1"/>
                <gridItem id="USE_NXD_MQTT_PING_TIMEOUT_DELAY" selectedIndex="1"/>
                <gridItem id="USE_NXD_MQTT_SOCKET_TIMEOUT" selectedIndex="1"/>
                <gridItem id="USE_NX_SNTP_CLIENT_MIN_SERVER_STRATUM" selectedIndex="1"/>
                <gridItem id="USE_NX_AZURE_DISABLE_IOT_SECURITY_MODULE" selectedIndex="1"/>
                <gridItem id="USE_NX_AZURE_IOT_HUB_CLIENT_USER_AGENT_DEVICE_VENDOR" selectedIndex="1"/>
                <gridItem id="USE_NX_AZURE_IOT_HUB_CLIENT_USER_AGENT_DEVICE_TYPE" selectedIndex="1"/>
                <gridItem id="NX_AZURE_IOT_HUB_CLIENT_USER_AGENT_DEVICE_TYPE" selectedIndex="&quot;RX671-RSK&quot;"/>
                <gridItem id="SAMPLE_DEVICE_MANUFACTURER" selectedIndex="&quot;RENESAS&quot;"/>
                <gridItem id="SAMPLE_DEVICE_MODEL" selectedIndex="&quot;RSK-RX671&quot;"/>
                <gridItem id="SAMPLE_LEAF_DEVICE_MANUFACTURER" selectedIndex="&quot;RENESAS&quot;"/>
                <gridItem id="SAMPLE_LEAF_DEVICE_MODEL" selectedIndex="&quot;RSK-RX671-Leaf&quot;"/>
                <gridItem id="USE_NX_AZURE_IOT_ADU_AGENT_HTTP_WINDOW_SIZE" selectedIndex="1"/>
                <gridItem id="NX_AZURE_IOT_ADU_AGENT_HTTP_WINDOW_SIZE" selectedIndex="10*1024"/>
                <gridItem id="USE_NX_AZURE_IOT_ADU_AGENT_HTTP_CONNECT_TIMEOUT" selectedIndex="1"/>
                <gridItem id="NX_AZURE_IOT_ADU_AGENT_HTTP_CONNECT_TIMEOUT" selectedIndex="60"/>
                <gridItem id="USE_NX_AZURE_IOT_ADU_AGENT_HTTP_DOWNLOAD_TIMEOUT" selectedIndex="1"/>
                <gridItem id="NX_AZURE_IOT_ADU_AGENT_HTTP_DOWNLOAD_TIMEOUT" selectedIndex="600"/>
                <gridItem id="USE_NX_AZURE_IOT_HUB_CLIENT_DNS_TIMEOUT" selectedIndex="1"/>
                <gridItem id="NX_AZURE_IOT_HUB_CLIENT_DNS_TIMEOUT" selectedIndex="100 * NX_IP_PERIODIC_RATE"/>
                <gridItem id="USE_NX_AZURE_IOT_HUB_CLIENT_MAX_BACKOFF_IN_SEC" selectedIndex="1"/>
                <gridItem id="NX_AZURE_IOT_HUB_CLIENT_MAX_BACKOFF_IN_SEC" selectedIndex="10 * 60"/>
                <gridItem id="USE_NX_AZURE_IOT_HUB_CLIENT_INITIAL_BACKOFF_IN_SEC" selectedIndex="1"/>
                <gridItem id="NX_AZURE_IOT_HUB_CLIENT_INITIAL_BACKOFF_IN_SEC" selectedIndex="10"/>
            </component>
            <source description="Code generator for Real-time OS" display="RTOS Configurator" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
        </configuration>
        <configuration enable="true" exclude="false" inuse="true" name="filex">
            <component display="Azure RTOS FileX" id="filex${packageVersion}" version="${packageVersion}">
            </component>
            <source description="Code generator for Real-time OS" display="RTOS Configurator" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
        </configuration>
        <configuration inuse="true" name="r_flash_rx">
            <component display="r_flash_rx" id="r_flash_rx4.91" version="4.91">
                <gridItem id="FLASH_CFG_CODE_FLASH_ENABLE" selectedIndex="1"/>
                <gridItem id="FLASH_CFG_DATA_FLASH_BGO" selectedIndex="1"/>
                <gridItem id="FLASH_CFG_CODE_FLASH_BGO" selectedIndex="1"/>
                <gridItem id="FLASH_CFG_CODE_FLASH_RUN_FROM_ROM" selectedIndex="1"/>
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration inuse="true" name="r_byteq">
            <component display="r_byteq" id="r_byteq2.10" version="2.10">
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration inuse="true" name="r_sci_rx">
            <component display="r_sci_rx" id="r_sci_rx4.60" version="4.60">
                <gridItem id="RXD0/SMISO0/SSCL0" selectedIndex="1"/>
                <gridItem id="TXD0/SMOSI0/SSDA0" selectedIndex="1"/>
                <gridItem id="SCI0" selectedIndex="1"/>
                <gridItem id="RXD2/SMISO2/SSCL2" selectedIndex="1"/>
                <gridItem id="TXD2/SMOSI2/SSDA2" selectedIndex="1"/>
                <gridItem id="CTS2#/RTS2#/SS2#" selectedIndex="1"/>
                <gridItem id="SCI2" selectedIndex="1"/>
                <gridItem id="RXD10/SMISO10/SSCL10" selectedIndex="1"/>
                <gridItem id="TXD10/SMOSI10/SSDA10" selectedIndex="1"/>
                <gridItem id="SCI10" selectedIndex="1"/>
                <gridItem id="SCI_CFG_CH0_INCLUDED" selectedIndex="1"/>
                <gridItem id="SCI_CFG_CH1_INCLUDED" selectedIndex="0"/>
                <gridItem id="SCI_CFG_CH2_INCLUDED" selectedIndex="1"/>
                <gridItem id="SCI_CFG_CH10_INCLUDED" selectedIndex="1"/>
                <gridItem id="SCI_CFG_CH0_TX_BUFSIZ" selectedIndex="2180"/>
                <gridItem id="SCI_CFG_CH2_TX_BUFSIZ" selectedIndex="2180"/>
                <gridItem id="SCI_CFG_CH0_RX_BUFSIZ" selectedIndex="4096"/>
                <gridItem id="SCI_CFG_CH2_RX_BUFSIZ" selectedIndex="4096"/>
                <gridItem id="SCI_CFG_CH10_TX_BUFSIZ" selectedIndex="2180"/>
                <gridItem id="SCI_CFG_CH10_RX_BUFSIZ" selectedIndex="4096"/>
                <gridItem id="SCI_CFG_TEI_INCLUDED" selectedIndex="1"/>
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration inuse="true" name="r_wifi_sx_ulpgn">
            <component display="r_wifi_sx_ulpgn" id="r_wifi_sx_ulpgn1.16" version="1.16">
                <gridItem id="WIFI_CFG_SCI_CHANNEL" selectedIndex="2"/>
                <gridItem id="WIFI_CFG_SCI_SECOND_CHANNEL" selectedIndex="0"/>
                <gridItem id="WIFI_CFG_SCI_INTERRUPT_LEVEL" selectedIndex="14"/>
                <gridItem id="WIFI_CFG_RESET_PORT" selectedIndex="9"/>
                <gridItem id="WIFI_CFG_RTS_PORT" selectedIndex="5"/>
                <gridItem id="WIFI_CFG_RTS_PIN" selectedIndex="1"/>
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration inuse="true" name="r_fwup">
            <component display="r_fwup" id="r_fwup1.06" version="1.06">
                <gridItem id="FWUP_CFG_IMPLEMENTATION_ENVIRONMENT" selectedIndex="4"/>
                <gridItem id="FWUP_CFG_COMMUNICATION_FUNCTION" selectedIndex="1"/>
                <gridItem id="FWUP_CFG_SERIAL_TERM_SCI" selectedIndex="6"/>
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration inuse="true" name="r_sys_time_rx">
            <component display="r_sys_time_rx" id="r_sys_time_rx1.01" version="1.01"/>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
    </tool>
</smc>
