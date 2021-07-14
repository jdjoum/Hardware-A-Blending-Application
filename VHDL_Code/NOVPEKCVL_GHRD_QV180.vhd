 ----------------------------------------------------------------------------------
-- Company:      
-- Engineer: 
-- 
-- Create Date:         
-- Design Name: 
-- Module Name:         
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision             0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use 	IEEE.STD_LOGIC_1164.ALL;
use 	IEEE.STD_LOGIC_ARITH.ALL;
use 	IEEE.STD_LOGIC_UNSIGNED.ALL;
library altera;
use 	altera.altera_syn_attributes.all;

entity NOVPEKCVL_GHRD_QV180 is
    Port (
				-- HPS pin declarastion
				-- =====================
				--
				-- DDR3
				HPS_DRAM_MA                            			: out   STD_LOGIC_VECTOR(14 downto 0);
				HPS_DRAM_BA                            			: out   STD_LOGIC_VECTOR(2 downto 0);
				HPS_DRAM_nMCS                          			: out   STD_LOGIC;
				HPS_DRAM_nCAS                          			: out   STD_LOGIC;
				HPS_DRAM_nRAS                          			: out   STD_LOGIC;
				HPS_DRAM_MCKE                          			: out   STD_LOGIC;
				HPS_DRAM_nMWE                                   : out   STD_LOGIC;
				HPS_DRAm_nRESET                        			: out   STD_LOGIC;
				HPS_DRAM_SDCLK_0_P                     			: out   STD_LOGIC;
				HPS_DRAM_SDCLK_0_N								      : out   STD_LOGIC;
				HPS_DRAM_MODT                          			: out   STD_LOGIC;  
				HPS_DRAM_RZQ                           			: in    STD_LOGIC;
				HPS_DRAM_MDQ                           			: inout STD_LOGIC_VECTOR(31 downto 0);
				HPS_DRAM_MDM                           			: out   STD_LOGIC_VECTOR(3 downto 0);
				HPS_DRAM_DQS0_P                        			: inout STD_LOGIC_VECTOR(3 downto 0);
				HPS_DRAM_DQS0_N                        			: inout STD_LOGIC_VECTOR(3 downto 0);
					
				-- UART0
				HPS_3V3_UART0_TX                       			: out   STD_LOGIC;
				HPS_3V3_UART0_RX                       			: in    STD_LOGIC;
				
				-- SD
				HPS_3V3_SDMMC_CLK                      			: out   STD_LOGIC;
				HPS_3V3_SDMMC_CMD                      			: inout STD_LOGIC;
				HPS_3V3_SDMMC_D0                       			: inout STD_LOGIC;
				HPS_3V3_SDMMC_D1                       			: inout STD_LOGIC;
				HPS_3V3_SDMMC_D2                       			: inout STD_LOGIC;
				HPS_3V3_SDMMC_D3                       			: inout STD_LOGIC;
					
					-- I2C
				HPS_3V3_I2C0_SCL                           		: inout STD_LOGIC;
				HPS_3V3_I2C0_SDA                           		: inout STD_LOGIC;
	
					-- EMAC1
				HPS_3V3_EMAC0_RGMII_TXD0                   		: out   STD_LOGIC;
				HPS_3V3_EMAC0_RGMII_TXD1                   		: out   STD_LOGIC;
				HPS_3V3_EMAC0_RGMII_TXD2                   		: out   STD_LOGIC;
				HPS_3V3_EMAC0_RGMII_TXD3                   		: out   STD_LOGIC;
				
				HPS_3V3_EMAC0_RGMII_TX_CLK                 		: out   STD_LOGIC;
				HPS_3V3_EMAC0_RGMII_TX_CTL                 		: out   STD_LOGIC;
				
				HPS_3V3_EMAC0_RGMII_RXD0                   		: in    STD_LOGIC;
				HPS_3V3_EMAC0_RGMII_RXD1                   		: in    STD_LOGIC;
				HPS_3V3_EMAC0_RGMII_RXD2                   		: in    STD_LOGIC;
				HPS_3V3_EMAC0_RGMII_RXD3                   		: in    STD_LOGIC;
				
				HPS_3V3_EMAC0_RGMII_RX_CLK                 		: in    STD_LOGIC;
				HPS_3V3_EMAC0_RGMII_RX_CTL                 		: in    STD_LOGIC;
				
				HPS_3V3_EMAC0_RGMII_MDC                    		: out   STD_LOGIC;
				HPS_3V3_EMAC0_RGMII_MDIO                   		: inout STD_LOGIC;				

				-- USB
				HPS_3V3_USB1_D0                        			: inout STD_LOGIC;
    			HPS_3V3_USB1_D1                        			: inout STD_LOGIC;
				HPS_3V3_USB1_D2                        			: inout STD_LOGIC;
				HPS_3V3_USB1_D3                        			: inout STD_LOGIC;
				HPS_3V3_USB1_D4                        			: inout STD_LOGIC;
				HPS_3V3_USB1_D5                        			: inout STD_LOGIC;
				HPS_3V3_USB1_D6                       			   : inout STD_LOGIC;
				HPS_3V3_USB1_D7                        			: inout STD_LOGIC;
				HPS_3V3_USB1_CLK                       			: in    STD_LOGIC;
				HPS_3V3_USB1_STP                       			: out   STD_LOGIC;
				HPS_3V3_USB1_DIR                       			: in    STD_LOGIC;
				HPS_3V3_USB1_NXT                       			: in    STD_LOGIC;
				
				-- GPIO
				HPS_3V3_ETH_nINT_as_GPIO09_via_RGMIIo_TX_CTL	: inout STD_LOGIC;
				
				HPS_3V3_GPIO00_via_RGMII0_TX_CLK                : inout STD_LOGIC;
				HPS_3V3_GPIO28_via_NAND_WE                      : inout STD_LOGIC;
				HPS_3V3_GPIO29_via_QSPI_IO0                     : inout STD_LOGIC;
				HPS_3V3_GPIO30_via_QSPI_IO1                     : inout STD_LOGIC;
				HPS_3V3_GPIO31_via_QSPI_IO2                     : inout STD_LOGIC;
				HPS_3V3_GPIO32_via_QSPI_IO3                     : inout STD_LOGIC;
				HPS_3V3_GPIO33_via_QSPI_SS0                     : inout STD_LOGIC;
				HPS_3V3_GPIO34_via_QSPI_CLK                     : inout STD_LOGIC;
				HPS_3V3_GPIO37_via_SDMMC_PWREN                  : inout STD_LOGIC;
				HPS_3V3_GPIO44_via_DSMMC_FB_CLK_IN              : inout STD_LOGIC;
				HPS_3V3_GPIO48_via_TRACE_CLK                    : inout STD_LOGIC;
				HPS_3V3_GPIO49_via_TRACE_D0                     : inout STD_LOGIC;
				HPS_3V3_GPIO50_via_TRACE_D1                     : inout STD_LOGIC;
				HPS_3V3_GPIO51_via_TRACE_D2                     : inout STD_LOGIC;
				HPS_3V3_GPIO52_via_TRACE_D3                     : inout STD_LOGIC;
				HPS_3V3_GPIO53_via_TRACE_D4                     : inout STD_LOGIC;
				HPS_3V3_GPIO54_via_TRACE_D5                     : inout STD_LOGIC;
				HPS_3V3_GPIO55_via_TRACE_D6                     : inout STD_LOGIC;
				HPS_3V3_GPIO56_via_TRACE_D7                     : inout STD_LOGIC;
				HPS_3V3_GPIO57_via_SPIM0_CLK                    : inout STD_LOGIC;
				HPS_3V3_GPIO58_via_SPIM0_MOSI                   : inout STD_LOGIC;
				HPS_3V3_GPIO59_via_SPIM0_MISO                   : inout STD_LOGIC;
				HPS_3V3_GPIO60_via_SPIM0_SS0                    : inout STD_LOGIC;
				HPS_3V3_GPIO65_via_CAN0_RX                      : inout STD_LOGIC;
				HPS_3V3_GPIO66_via_CAN0_TX                      : inout STD_LOGIC;	
	
				-- FPGA HEADER	
				FPGA_B8A_HP03_TX_T4_N_via_A5                    : inout STD_LOGIC;
				FPGA_B8A_HP04_RX_T9_N_via_C5                    : inout STD_LOGIC;
				FPGA_B8A_HP01_TX_T4_P_via_A6                    : inout STD_LOGIC;   -- 1
				FPGA_B8A_HP02_RX_T9_P_via_C6                    : inout STD_LOGIC;   -- 2
				FPGA_B5A_HP05_TX_R5_N_via_AA22                  : inout STD_LOGIC;
				FPGA_B8A_HP06_RX_T1_N_via_E5                    : inout STD_LOGIC;
				FPGA_B5A_HP07_TX_R5_P_via_AB22                  : inout STD_LOGIC;
				FPGA_B8A_HP08_RX_T1_P_via_F5                    : inout STD_LOGIC;
				FPGA_B5A_HP09_TX_R3_N_via_Y21                   : inout STD_LOGIC;
				FPGA_B5A_HP10_TX_R7_N_via_W21                   : inout STD_LOGIC;   -- 10
				FPGA_B5A_HP11_TX_R3_P_via_AA21                  : inout STD_LOGIC;
				FPGA_B5A_HP12_TX_R7_P_via_V20                   : inout STD_LOGIC;
				FPGA_B5A_HP13_TX_R1_N_via_Y20                   : inout STD_LOGIC;
				FPGA_B5A_HP14_RX_R4_N_via_V19                   : inout STD_LOGIC;
				FPGA_B5A_HP15_TX_R1_P_via_Y19                   : inout STD_LOGIC;
				FPGA_B5A_HP16_RX_R4_P_via_U18                   : inout STD_LOGIC;
				FPGA_B5A_HP17_RX_R2_N_via_W18                   : inout STD_LOGIC;
				FPGA_B5A_HP18_RX_R6_N_via_U17                   : inout STD_LOGIC;
				FPGA_B5A_HP19_RX_R2_P_via_V17                   : inout STD_LOGIC;
				FPGA_B5A_HP20_RX_R6_P_via_V16                   : inout STD_LOGIC;   -- 20
				FPGA_B4A_HP21_TX_B45_N_via_AB17                 : inout STD_LOGIC;
				FPGA_B5A_HP22_RX_R8_N_via_W16                   : inout STD_LOGIC;
				FPGA_B4A_HP23_TX_B45_P_via_AA16                 : inout STD_LOGIC;
				FPGA_B5A_HP24_RX_R8_P_via_V15                   : inout STD_LOGIC;
				FPGA_B4A_HP25_RX_B47_N_via_Y14                  : inout STD_LOGIC;
				FPGA_B4A_HP26_RX_B70_N_via_Y16                  : inout STD_LOGIC;
				FPGA_B4A_HP27_RX_B47_P_via_W14                  : inout STD_LOGIC;
				FPGA_B4A_HP28_RX_B70_P_via_Y15                  : inout STD_LOGIC;
				FPGA_B4A_HP29_TX_B48_N_via_AB20                 : inout STD_LOGIC;
				FPGA_B4A_HP30_RX_B55_N_via_Y13                  : inout STD_LOGIC;   -- 30
				FPGA_B4A_HP31_TX_B48_P_via_AB19                 : inout STD_LOGIC;
				FPGA_B4A_HP32_RX_B55_P_via_W12                  : inout STD_LOGIC;
				FPGA_B4A_HP33_RX_B43_N_via_W11                  : inout STD_LOGIC;
				FPGA_B4A_HP34_Tx_B69_P_via_AA18                 : inout STD_LOGIC;
				FPGA_B4A_HP35_RX_B43_P_via_V11                  : inout STD_LOGIC;
				FPGA_B4A_HP36_TX_B69_N_via_AB18                 : inout STD_LOGIC;
				FPGA_B4A_HP37_TX_B41_P_via_Y11                  : inout STD_LOGIC;
				FPGA_B4A_HP38_RX_B42_P_via_AB12                 : inout STD_LOGIC;
				FPGA_B4A_HP39_TX_B41_N_via_AA11                 : inout STD_LOGIC;
				FPGA_B4A_HP40_RX_B42_N_via_AB13                 : inout STD_LOGIC;   -- 40
				FPGA_B4A_HP41_RX_B46_N_via_AB15                 : inout STD_LOGIC;
				FPGA_B4A_HP42_TX_B44_P_via_AA13                 : inout STD_LOGIC;
				FPGA_B4A_HP43_RX_B46_P_via_AA15                 : inout STD_LOGIC;
				FPGA_B4A_HP44_TX_B44_N_via_AB14                 : inout STD_LOGIC;
				FPGA_B3B_HP45_TX_B37_N_via_AB10                 : inout STD_LOGIC;
				FPGA_B3B_HP46_RX_B31_N_via_V10                  : inout STD_LOGIC;
				FPGA_B3B_HP47_TX_B37_P_via_AB9                  : inout STD_LOGIC;
				FPGA_B3B_HP48_RX_B31_P_via_U10                  : inout STD_LOGIC;
				FPGA_B3A_HP49_TX_B8_N_via_W8                    : inout STD_LOGIC;
				FPGA_B3B_HP50_RX_B39_N_via_AB8                  : inout STD_LOGIC;   -- 50
				FPGA_B3A_HP51_TX_B8_P_via_V9                    : inout STD_LOGIC;
				FPGA_B3B_HP52_RX_B39_P_via_AA8                  : inout STD_LOGIC;
				FPGA_B3A_HP53_RX_B3_P_via_U6                    : inout STD_LOGIC;
				FPGA_B3A_HP54_RX_B5_N_via_V7                    : inout STD_LOGIC;
				FPGA_B3A_HP55_RX_B3_N_via_V5                    : inout STD_LOGIC;
				FPGA_B3A_HP56_RX_B5_P_via_U7                    : inout STD_LOGIC;
				FPGA_B3A_HP57_RX_B1_P_via_W6                    : inout STD_LOGIC;
				FPGA_B3A_HP58_RX_B7_P_via_V6                    : inout STD_LOGIC;
				FPGA_B3A_HP59_RX_B1_N_via_Y5                    : inout STD_LOGIC;
				FPGA_B3A_HP60_RX_B7_N_via_W7                    : inout STD_LOGIC;   -- 60
				FPGA_B3A_HP61_TX_B2_N_via_AB5                   : inout STD_LOGIC;
				FPGA_B3A_HP62_TX_B6_P_via_Y8                    : inout STD_LOGIC;
				FPGA_B3A_HP63_TX_B2_P_via_AA5                   : inout STD_LOGIC;
				FPGA_B3A_HP64_TX_B6_N_via_AA7                   : inout STD_LOGIC;
				FPGA_B3A_HP66_TX_B4_P_via_AA6                   : inout STD_LOGIC;
				FPGA_B3A_HP68_TX_B4_N_via_AB7                   : inout STD_LOGIC    -- 66
      );				
end entity NOVPEKCVL_GHRD_QV180;

architecture rtl of NOVPEKCVL_GHRD_QV180 is

	component NOVPEKCVL_QSYS is
	   port 
		   (
				memory_mem_a                           			: out   std_logic_vector(14 downto 0);                    -- mem_a
				memory_mem_ba                          			: out   std_logic_vector(2 downto 0);                     -- mem_ba
				memory_mem_ck                          			: out   std_logic;                                        -- mem_ck
				memory_mem_ck_n                        			: out   std_logic;                                        -- mem_ck_n
				memory_mem_cke                         			: out   std_logic;                                        -- mem_cke
				memory_mem_cs_n                        			: out   std_logic;                                        -- mem_cs_n
				memory_mem_ras_n                       			: out   std_logic;                                        -- mem_ras_n
				memory_mem_cas_n                       			: out   std_logic;                                        -- mem_cas_n
				memory_mem_we_n                        			: out   std_logic;                                        -- mem_we_n
				memory_mem_reset_n                     			: out   std_logic;                                        -- mem_reset_n
				memory_mem_dq                          			: inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
				memory_mem_dqs                         			: inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
				memory_mem_dqs_n                       			: inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
				memory_mem_odt                         			: out   std_logic;                                        -- mem_odt
				memory_mem_dm                          			: out   std_logic_vector(3 downto 0);                     -- mem_dm
				memory_oct_rzqin                       			: in    std_logic                     := 'X';             -- oct_rzqin
						
				hps_0_hps_io_hps_io_emac1_inst_TX_CLK  			: out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
				hps_0_hps_io_hps_io_emac1_inst_TXD0    			: out   std_logic;                                        -- hps_io_emac1_inst_TXD0
				hps_0_hps_io_hps_io_emac1_inst_TXD1    			: out   std_logic;                                        -- hps_io_emac1_inst_TXD1
				hps_0_hps_io_hps_io_emac1_inst_TXD2    			: out   std_logic;                                        -- hps_io_emac1_inst_TXD2
				hps_0_hps_io_hps_io_emac1_inst_TXD3    			: out   std_logic;                                        -- hps_io_emac1_inst_TXD3
				hps_0_hps_io_hps_io_emac1_inst_RXD0    			: in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
				hps_0_hps_io_hps_io_emac1_inst_MDIO    			: inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
				hps_0_hps_io_hps_io_emac1_inst_MDC     			: out   std_logic;                                        -- hps_io_emac1_inst_MDC
				hps_0_hps_io_hps_io_emac1_inst_RX_CTL  			: in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
				hps_0_hps_io_hps_io_emac1_inst_TX_CTL  			: out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
				hps_0_hps_io_hps_io_emac1_inst_RX_CLK  			: in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
				hps_0_hps_io_hps_io_emac1_inst_RXD1    			: in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
				hps_0_hps_io_hps_io_emac1_inst_RXD2    			: in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
				hps_0_hps_io_hps_io_emac1_inst_RXD3    			: in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
									
				hps_0_hps_io_hps_io_sdio_inst_CMD      			: inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
				hps_0_hps_io_hps_io_sdio_inst_D0       			: inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
				hps_0_hps_io_hps_io_sdio_inst_D1       			: inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
				hps_0_hps_io_hps_io_sdio_inst_CLK      			: out   std_logic;                                        -- hps_io_sdio_inst_CLK
				hps_0_hps_io_hps_io_sdio_inst_D2       			: inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
				hps_0_hps_io_hps_io_sdio_inst_D3       			: inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
									
				hps_0_hps_io_hps_io_usb1_inst_D0       			: inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
				hps_0_hps_io_hps_io_usb1_inst_D1       			: inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
				hps_0_hps_io_hps_io_usb1_inst_D2       			: inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
				hps_0_hps_io_hps_io_usb1_inst_D3       			: inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
				hps_0_hps_io_hps_io_usb1_inst_D4       			: inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
				hps_0_hps_io_hps_io_usb1_inst_D5       			: inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
				hps_0_hps_io_hps_io_usb1_inst_D6       			: inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
				hps_0_hps_io_hps_io_usb1_inst_D7       			: inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
				hps_0_hps_io_hps_io_usb1_inst_CLK      			: in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
				hps_0_hps_io_hps_io_usb1_inst_STP      			: out   std_logic;                                        -- hps_io_usb1_inst_STP
				hps_0_hps_io_hps_io_usb1_inst_DIR      			: in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
				hps_0_hps_io_hps_io_usb1_inst_NXT      			: in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
									
				hps_0_hps_io_hps_io_uart0_inst_RX      			: in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
				hps_0_hps_io_hps_io_uart0_inst_TX      			: out   std_logic;                                        -- hps_io_uart0_inst_TX
									
				hps_0_hps_io_hps_io_i2c0_inst_SDA      			: inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SDA
				hps_0_hps_io_hps_io_i2c0_inst_SCL      			: inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SCL
									
				hps_0_hps_io_hps_io_gpio_inst_GPIO00   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO00
				hps_0_hps_io_hps_io_gpio_inst_GPIO09   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO09
				hps_0_hps_io_hps_io_gpio_inst_GPIO28   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO28
				hps_0_hps_io_hps_io_gpio_inst_GPIO29   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO29
				hps_0_hps_io_hps_io_gpio_inst_GPIO30   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO30
				hps_0_hps_io_hps_io_gpio_inst_GPIO31   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO31
				hps_0_hps_io_hps_io_gpio_inst_GPIO32   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO32
				hps_0_hps_io_hps_io_gpio_inst_GPIO33   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO33
				hps_0_hps_io_hps_io_gpio_inst_GPIO34   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO34
				hps_0_hps_io_hps_io_gpio_inst_GPIO37   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO37
				hps_0_hps_io_hps_io_gpio_inst_GPIO44   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO44
				hps_0_hps_io_hps_io_gpio_inst_GPIO48   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO48
				hps_0_hps_io_hps_io_gpio_inst_GPIO49   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO49
				hps_0_hps_io_hps_io_gpio_inst_GPIO50   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO50
				hps_0_hps_io_hps_io_gpio_inst_GPIO51   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO51
				hps_0_hps_io_hps_io_gpio_inst_GPIO52   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO52
				hps_0_hps_io_hps_io_gpio_inst_GPIO53   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO53
				hps_0_hps_io_hps_io_gpio_inst_GPIO54   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO54
				hps_0_hps_io_hps_io_gpio_inst_GPIO55   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO55
				hps_0_hps_io_hps_io_gpio_inst_GPIO56   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO56
				hps_0_hps_io_hps_io_gpio_inst_GPIO57   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO57
				hps_0_hps_io_hps_io_gpio_inst_GPIO58   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO58
				hps_0_hps_io_hps_io_gpio_inst_GPIO59   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO59
				hps_0_hps_io_hps_io_gpio_inst_GPIO60   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO60
				hps_0_hps_io_hps_io_gpio_inst_GPIO65   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO65
				hps_0_hps_io_hps_io_gpio_inst_GPIO66   			: inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO66
									
				hdl_id_external_connection_export      			: in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
									
				exp_pio_1_external_connection_in_port  			: in    std_logic_vector(31 downto 0) := (others => 'X'); -- in_port
				exp_pio_1_external_connection_out_port 			: out   std_logic_vector(31 downto 0);                    -- out_port
				exp_pio_2_external_connection_in_port  			: in    std_logic_vector(31 downto 0) := (others => 'X'); -- in_port
				exp_pio_2_external_connection_out_port 			: out   std_logic_vector(31 downto 0);                    -- out_port
				exp_pio_3_external_connection_in_port  			: in    std_logic_vector(1 downto 0)  := (others => 'X'); -- in_port
				exp_pio_3_external_connection_out_port 			: out   std_logic_vector(1 downto 0)                      -- out_port
				

		);
	end component NOVPEKCVL_QSYS;        	
			
begin			
			
	--HPS_I1: component NON_EC_ISSI_QSYS
	HPS_I1: component NOVPEKCVL_QSYS
		port map 
		   (
				memory_mem_a                                	=> HPS_DRAM_MA,                       -- memory.mem_a
				memory_mem_ba                                	=> HPS_DRAM_BA,                       --       .mem_ba
				memory_mem_ck                                	=> HPS_DRAM_SDCLK_0_P,                --       .mem_ck
				memory_mem_ck_n                              	=> HPS_DRAM_SDCLK_0_N,                --       .mem_ck_n
				memory_mem_cke                               	=> HPS_DRAM_MCKE,                     --       .mem_cke
				memory_mem_cs_n                              	=> HPS_DRAM_nMCS,                     --       .mem_cs_n
				memory_mem_ras_n                             	=> HPS_DRAM_nRAS,                     --       .mem_ras_n
				memory_mem_cas_n                             	=> HPS_DRAM_nCAS,                     --       .mem_cas_n
				memory_mem_we_n                              	=> HPS_DRAM_nMWE,                     --       .mem_we_n
				memory_mem_reset_n                           	=> HPS_DRAm_nRESET,                   --       .mem_reset_n
				memory_mem_dq                                	=> HPS_DRAM_MDQ,                      --       .mem_dq
				memory_mem_dqs                               	=> HPS_DRAM_DQS0_P,                   --       .mem_dqs
				memory_mem_dqs_n                             	=> HPS_DRAM_DQS0_N,                   --       .mem_dqs_n
				memory_mem_odt                               	=> HPS_DRAM_MODT,                     --       .mem_odt
				memory_mem_dm                                	=> HPS_DRAM_MDM,                      --       .mem_dm
				memory_oct_rzqin                             	=> HPS_DRAM_RZQ,                      --       .oct_rzqin
								
				hps_0_hps_io_hps_io_sdio_inst_CMD            	=> HPS_3V3_SDMMC_CMD,                 -- hps_io.hps_io_sdio_inst_CMD
				hps_0_hps_io_hps_io_sdio_inst_D0             	=> HPS_3V3_SDMMC_D0,                  --       .hps_io_sdio_inst_D0
				hps_0_hps_io_hps_io_sdio_inst_D1             	=> HPS_3V3_SDMMC_D1,                  --       .hps_io_sdio_inst_D1
				hps_0_hps_io_hps_io_sdio_inst_CLK            	=> HPS_3V3_SDMMC_CLK,                 --       .hps_io_sdio_inst_CLK
				hps_0_hps_io_hps_io_sdio_inst_D2             	=> HPS_3V3_SDMMC_D2,                  --       .hps_io_sdio_inst_D2
				hps_0_hps_io_hps_io_sdio_inst_D3             	=> HPS_3V3_SDMMC_D3,                  --       .hps_io_sdio_inst_D3
								
				hps_0_hps_io_hps_io_uart0_inst_RX            	=> HPS_3V3_UART0_RX,                  --       .hps_io_uart0_inst_RX
				hps_0_hps_io_hps_io_uart0_inst_TX            	=> HPS_3V3_UART0_TX,                  --       .hps_io_uart0_inst_TX
									
				hps_0_hps_io_hps_io_emac1_inst_TX_CLK        	=> HPS_3V3_EMAC0_RGMII_TX_CLK,        -- hps_io.hps_io_emac1_inst_TX_CLK
				hps_0_hps_io_hps_io_emac1_inst_TXD0          	=> HPS_3V3_EMAC0_RGMII_TXD0,          --       .hps_io_emac1_inst_TXD0
				hps_0_hps_io_hps_io_emac1_inst_TXD1          	=> HPS_3V3_EMAC0_RGMII_TXD1,          --       .hps_io_emac1_inst_TXD1
				hps_0_hps_io_hps_io_emac1_inst_TXD2          	=> HPS_3V3_EMAC0_RGMII_TXD2,          --       .hps_io_emac1_inst_TXD2
				hps_0_hps_io_hps_io_emac1_inst_TXD3          	=> HPS_3V3_EMAC0_RGMII_TXD3,          --       .hps_io_emac1_inst_TXD3
				hps_0_hps_io_hps_io_emac1_inst_RXD0          	=> HPS_3V3_EMAC0_RGMII_RXD0,          --       .hps_io_emac1_inst_RXD0
				hps_0_hps_io_hps_io_emac1_inst_MDIO          	=> HPS_3V3_EMAC0_RGMII_MDIO,          --       .hps_io_emac1_inst_MDIO
				hps_0_hps_io_hps_io_emac1_inst_MDC           	=> HPS_3V3_EMAC0_RGMII_MDC,           --       .hps_io_emac1_inst_MDC
				hps_0_hps_io_hps_io_emac1_inst_RX_CTL        	=> HPS_3V3_EMAC0_RGMII_RX_CTL,        --       .hps_io_emac1_inst_RX_CTL
				hps_0_hps_io_hps_io_emac1_inst_TX_CTL        	=> HPS_3V3_EMAC0_RGMII_TX_CTL,        --       .hps_io_emac1_inst_TX_CTL
				hps_0_hps_io_hps_io_emac1_inst_RX_CLK        	=> HPS_3V3_EMAC0_RGMII_RX_CLK,        --       .hps_io_emac1_inst_RX_CLK
				hps_0_hps_io_hps_io_emac1_inst_RXD1          	=> HPS_3V3_EMAC0_RGMII_RXD1,          --       .hps_io_emac1_inst_RXD1
				hps_0_hps_io_hps_io_emac1_inst_RXD2          	=> HPS_3V3_EMAC0_RGMII_RXD2,          --       .hps_io_emac1_inst_RXD2
				hps_0_hps_io_hps_io_emac1_inst_RXD3          	=> HPS_3V3_EMAC0_RGMII_RXD3,          --       .hps_io_emac1_inst_RXD3
					
				hps_0_hps_io_hps_io_usb1_inst_D0             	=> HPS_3V3_USB1_D0,                   --       .hps_io_usb1_inst_D0
				hps_0_hps_io_hps_io_usb1_inst_D1             	=> HPS_3V3_USB1_D1,                   --       .hps_io_usb1_inst_D1
				hps_0_hps_io_hps_io_usb1_inst_D2             	=> HPS_3V3_USB1_D2,                   --       .hps_io_usb1_inst_D2
				hps_0_hps_io_hps_io_usb1_inst_D3             	=> HPS_3V3_USB1_D3,                   --       .hps_io_usb1_inst_D3
				hps_0_hps_io_hps_io_usb1_inst_D4             	=> HPS_3V3_USB1_D4,                   --       .hps_io_usb1_inst_D4
				hps_0_hps_io_hps_io_usb1_inst_D5             	=> HPS_3V3_USB1_D5,                   --       .hps_io_usb1_inst_D5
				hps_0_hps_io_hps_io_usb1_inst_D6             	=> HPS_3V3_USB1_D6,                   --       .hps_io_usb1_inst_D6
				hps_0_hps_io_hps_io_usb1_inst_D7             	=> HPS_3V3_USB1_D7,                   --       .hps_io_usb1_inst_D7
				hps_0_hps_io_hps_io_usb1_inst_CLK            	=> HPS_3V3_USB1_CLK,                  --       .hps_io_usb1_inst_CLK
				hps_0_hps_io_hps_io_usb1_inst_STP            	=> HPS_3V3_USB1_STP,                  --       .hps_io_usb1_inst_STP
				hps_0_hps_io_hps_io_usb1_inst_DIR            	=> HPS_3V3_USB1_DIR,                  --       .hps_io_usb1_inst_DIR
				hps_0_hps_io_hps_io_usb1_inst_NXT            	=> HPS_3V3_USB1_NXT,                  --       .hps_io_usb1_inst_NXT
								
				hps_0_hps_io_hps_io_i2c0_inst_SDA            	=> HPS_3V3_I2C0_SDA,                  --       .hps_io_i2c0_inst_SDA
				hps_0_hps_io_hps_io_i2c0_inst_SCL            	=> HPS_3V3_I2C0_SCL,                  --       .hps_io_i2c0_inst_SCL
								
				hps_0_hps_io_hps_io_gpio_inst_GPIO00         	=> HPS_3V3_GPIO00_via_RGMII0_TX_CLK,                    --                              .hps_io_gpio_inst_GPIO00
				hps_0_hps_io_hps_io_gpio_inst_GPIO09   			=> HPS_3V3_ETH_nINT_as_GPIO09_via_RGMIIo_TX_CTL,        --                               .hps_io_gpio_inst_GPIO09
				hps_0_hps_io_hps_io_gpio_inst_GPIO28   			=> HPS_3V3_GPIO28_via_NAND_WE,                          --                               .hps_io_gpio_inst_GPIO28
				hps_0_hps_io_hps_io_gpio_inst_GPIO29  		 	   => HPS_3V3_GPIO29_via_QSPI_IO0,                         --                               .hps_io_gpio_inst_GPIO29
				hps_0_hps_io_hps_io_gpio_inst_GPIO30   			=> HPS_3V3_GPIO30_via_QSPI_IO1,                         --                               .hps_io_gpio_inst_GPIO30
				hps_0_hps_io_hps_io_gpio_inst_GPIO31   			=> HPS_3V3_GPIO31_via_QSPI_IO2,                         --                               .hps_io_gpio_inst_GPIO31
				hps_0_hps_io_hps_io_gpio_inst_GPIO32   			=> HPS_3V3_GPIO32_via_QSPI_IO3,                         --                               .hps_io_gpio_inst_GPIO32
				hps_0_hps_io_hps_io_gpio_inst_GPIO33  		 	   => HPS_3V3_GPIO33_via_QSPI_SS0,                         --                               .hps_io_gpio_inst_GPIO33
				hps_0_hps_io_hps_io_gpio_inst_GPIO34   			=> HPS_3V3_GPIO34_via_QSPI_CLK,                         --                               .hps_io_gpio_inst_GPIO34
				hps_0_hps_io_hps_io_gpio_inst_GPIO37         	=> HPS_3V3_GPIO37_via_SDMMC_PWREN,                      --                              .hps_io_gpio_inst_GPIO37
				hps_0_hps_io_hps_io_gpio_inst_GPIO44         	=> HPS_3V3_GPIO44_via_DSMMC_FB_CLK_IN,                  --                              .hps_io_gpio_inst_GPIO44
				hps_0_hps_io_hps_io_gpio_inst_GPIO48         	=> HPS_3V3_GPIO48_via_TRACE_CLK,                        --                              .hps_io_gpio_inst_GPIO48
				hps_0_hps_io_hps_io_gpio_inst_GPIO49         	=> HPS_3V3_GPIO49_via_TRACE_D0,                         --                              .hps_io_gpio_inst_GPIO49
				hps_0_hps_io_hps_io_gpio_inst_GPIO50         	=> HPS_3V3_GPIO50_via_TRACE_D1,                         --                              .hps_io_gpio_inst_GPIO50
				hps_0_hps_io_hps_io_gpio_inst_GPIO51         	=> HPS_3V3_GPIO51_via_TRACE_D2,                         --                              .hps_io_gpio_inst_GPIO51
				hps_0_hps_io_hps_io_gpio_inst_GPIO52   			=> HPS_3V3_GPIO52_via_TRACE_D3,                         --                               .hps_io_gpio_inst_GPIO52
				hps_0_hps_io_hps_io_gpio_inst_GPIO53   			=> HPS_3V3_GPIO53_via_TRACE_D4,                         --                               .hps_io_gpio_inst_GPIO53
				hps_0_hps_io_hps_io_gpio_inst_GPIO54   			=> HPS_3V3_GPIO54_via_TRACE_D5,                         --                               .hps_io_gpio_inst_GPIO54
				hps_0_hps_io_hps_io_gpio_inst_GPIO55   			=> HPS_3V3_GPIO55_via_TRACE_D6,                         --                               .hps_io_gpio_inst_GPIO55
				hps_0_hps_io_hps_io_gpio_inst_GPIO56   			=> HPS_3V3_GPIO56_via_TRACE_D7,                         --                               .hps_io_gpio_inst_GPIO56
				hps_0_hps_io_hps_io_gpio_inst_GPIO57         	=> HPS_3V3_GPIO57_via_SPIM0_CLK,                        --                              .hps_io_gpio_inst_GPIO57
				hps_0_hps_io_hps_io_gpio_inst_GPIO58         	=> HPS_3V3_GPIO58_via_SPIM0_MOSI,                       --                              .hps_io_gpio_inst_GPIO58
				hps_0_hps_io_hps_io_gpio_inst_GPIO59         	=> HPS_3V3_GPIO59_via_SPIM0_MISO,                       --                              .hps_io_gpio_inst_GPIO59
				hps_0_hps_io_hps_io_gpio_inst_GPIO60         	=> HPS_3V3_GPIO60_via_SPIM0_SS0,                        --                              .hps_io_gpio_inst_GPIO60
				hps_0_hps_io_hps_io_gpio_inst_GPIO65         	=> HPS_3V3_GPIO65_via_CAN0_RX,                          --                              .hps_io_gpio_inst_GPIO65
				hps_0_hps_io_hps_io_gpio_inst_GPIO66         	=> HPS_3V3_GPIO66_via_CAN0_TX                          --                              .hps_io_gpio_inst_GPIO66
								
				
		);				
			

end;	