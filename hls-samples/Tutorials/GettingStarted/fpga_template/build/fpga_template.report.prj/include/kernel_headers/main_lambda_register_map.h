
/* This header file describes the Register Map for the main_lambda kernel */

/* Note that this header file should NOT be included directly! */
/* Please include the top-level header file register_map_offsets.h instead! */

#ifndef __MAIN_LAMBDA_REGISTER_MAP_REGS_H__
#define __MAIN_LAMBDA_REGISTER_MAP_REGS_H__



/* Status register contains all the control bits to control kernel execution */
/******************************************************************************/
/* Memory Map Summary                                                         */
/******************************************************************************/

/*
 Address | Access | Register     | Argument                            | Description 
---------|--------|--------------|-------------------------------------|-------------------------------
     0x0 |      R |   reg0[63:0] |                        Status[63:0] |         * Read the status bits
         |        |              |                                     |       that are described below
---------|--------|--------------|-------------------------------------|-------------------------------
     0x8 |      W |   reg1[31:0] |                         Start[31:0] |        * Write 1 to initiate a
         |        |              |                                     |                   kernel start
---------|--------|--------------|-------------------------------------|-------------------------------
    0x30 |      R |   reg6[31:0] |                 FinishCounter[31:0] | * Read to get number of kernel
         |        |  reg6[63:32] |                 FinishCounter[31:0] |       finishes, note that this
         |        |              |                                     |    register will clear on read
---------|--------|--------------|-------------------------------------|-------------------------------
    0x80 |      W |  reg16[63:0] |                         arg_c[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x88 |      W |  reg17[63:0] |                         arg_a[63:0] |                              
---------|--------|--------------|-------------------------------------|-------------------------------
    0x90 |      W |  reg18[63:0] |                         arg_b[63:0] |                              

The status register (0x00) has the following layout:

  Byte         |  7  |  6  |  5  |  4  |        3        |        2        |      1      |     0     |
---------------|-----------------------|-----------------------------------|-------------------------|
  Description  |        Reserved       |      CSR Address Map Version      |    kernel_status Bits   |

If the structure of the generated CSR changes in future versions of the Intel® oneAPI DPC++/C++ Compiler,
the CSR address map version will be updated. The current CSR address map version is 5.
If the CSR address map version changes, review the generated CSR structure and any code that depends
on the CSR structure.
The kernel_status bits have the following layout:

  Bit          |    15     |    14:3    |    2   |    1   |     0      |
---------------|-----------|------------|--------|--------|------------|
  Description  |  running  |  reserved  |  busy  |  done  |  reserved  |

*/

#define CSR_VERSION_NUMBER (5)

/******************************************************************************/
/* Register Address Macros                                                    */
/******************************************************************************/

/* Status Register Bit Offsets (Bits) */
/* Note: Bits In Status Registers Are Marked As Read-Only or Read-Write
   Please Do Not Write To Read-Only Bits */
#ifndef __REGISTER_BITOFFSET_MACROS__
#define __REGISTER_BITOFFSET_MACROS__
#define KERNEL_REGISTER_MAP_DONE_OFFSET (1) // Read-only
#define KERNEL_REGISTER_MAP_BUSY_OFFSET (2) // Read-only
#define KERNEL_REGISTER_MAP_RUNNING_OFFSET (15) // Read-only
#endif

/* Status Register Bit Masks (Bits) */
#ifndef __REGISTER_BITMASK_MACROS__
#define __REGISTER_BITMASK_MACROS__
#define KERNEL_REGISTER_MAP_DONE_MASK (0x2)
#define KERNEL_REGISTER_MAP_BUSY_MASK (0x4)
#define KERNEL_REGISTER_MAP_RUNNING_MASK (0x8000)
#endif

/* Byte Addresses */
#define MAIN_LAMBDA_REGISTER_MAP_STATUS_REG (0x0 + MAIN_LAMBDA_REGISTER_MAP_OFFSET)
#define MAIN_LAMBDA_REGISTER_MAP_START_REG (0x8 + MAIN_LAMBDA_REGISTER_MAP_OFFSET)
#define MAIN_LAMBDA_REGISTER_MAP_FINISHCOUNTER_REG (0x30 + MAIN_LAMBDA_REGISTER_MAP_OFFSET)
#define MAIN_LAMBDA_REGISTER_MAP_FINISHCOUNTER_REG (0x34 + MAIN_LAMBDA_REGISTER_MAP_OFFSET)
#define MAIN_LAMBDA_REGISTER_MAP_ARG_ARG_C_REG (0x80 + MAIN_LAMBDA_REGISTER_MAP_OFFSET)
#define MAIN_LAMBDA_REGISTER_MAP_ARG_ARG_A_REG (0x88 + MAIN_LAMBDA_REGISTER_MAP_OFFSET)
#define MAIN_LAMBDA_REGISTER_MAP_ARG_ARG_B_REG (0x90 + MAIN_LAMBDA_REGISTER_MAP_OFFSET)

/* Argument Sizes (bytes) */
#define MAIN_LAMBDA_REGISTER_MAP_ARG_ARG_C_SIZE (8)
#define MAIN_LAMBDA_REGISTER_MAP_ARG_ARG_A_SIZE (8)
#define MAIN_LAMBDA_REGISTER_MAP_ARG_ARG_B_SIZE (8)

/* Argument Masks */
#define MAIN_LAMBDA_REGISTER_MAP_ARG_ARG_C_MASK (0xffffffffffffffffULL)
#define MAIN_LAMBDA_REGISTER_MAP_ARG_ARG_A_MASK (0xffffffffffffffffULL)
#define MAIN_LAMBDA_REGISTER_MAP_ARG_ARG_B_MASK (0xffffffffffffffffULL)

#endif /* __MAIN_LAMBDA_REGISTER_MAP_REGS_H__ */
