/* Layout for the RISC-V 32 boards, used by the examples in this repository. */

MEMORY {
  /*
   * The TBF header can change in size so use 0x40 combined with
   * --protected-region-size with elf2tab to cover a header upto that
   * size.
   *
   * Note that the SRAM address may need to be changed depending on
   * the kernel binary, check for the actual address of APP_MEMORY!
   */
  FLASH (rx) : ORIGIN = 0x20030040, LENGTH = 32M
  SRAM (rwx) : ORIGIN = 0x10004000, LENGTH = 512K
  /*FLASH (rx) : ORIGIN = 0x20032040, LENGTH = 32M
  SRAM (rwx) : ORIGIN = 0x10005148, LENGTH = 512K*/
}

MPU_MIN_ALIGN = 1K;

INCLUDE layout_generic.ld
