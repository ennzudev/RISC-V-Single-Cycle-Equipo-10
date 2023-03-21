onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /RISCVSC_TB/clk_tb
add wave -noupdate /RISCVSC_TB/reset_tb
add wave -noupdate -expand -group ALU -radix symbolic -radixshowbase 0 /RISCVSC_TB/DUV/ALU_UNIT/A_i
add wave -noupdate -expand -group ALU -radix symbolic -radixshowbase 0 /RISCVSC_TB/DUV/ALU_UNIT/B_i
add wave -noupdate -expand -group ALU -radix symbolic -radixshowbase 0 /RISCVSC_TB/DUV/ALU_UNIT/Zero_o
add wave -noupdate -expand -group ALU -radix decimal -radixshowbase 0 /RISCVSC_TB/DUV/ALU_UNIT/ALU_Result_o
add wave -noupdate -expand -group {CONTROL UNIT} -radix symbolic -radixshowbase 0 /RISCVSC_TB/DUV/CONTROL_UNIT/OP_i
add wave -noupdate -expand -group {CONTROL UNIT} -radix symbolic /RISCVSC_TB/DUV/CONTROL_UNIT/Branch_o
add wave -noupdate -expand -group {CONTROL UNIT} -radix symbolic /RISCVSC_TB/DUV/CONTROL_UNIT/Mem_Read_o
add wave -noupdate -expand -group {CONTROL UNIT} -radix symbolic /RISCVSC_TB/DUV/CONTROL_UNIT/Mem_to_Reg_o
add wave -noupdate -expand -group {CONTROL UNIT} -radix symbolic /RISCVSC_TB/DUV/CONTROL_UNIT/Mem_Write_o
add wave -noupdate -expand -group {CONTROL UNIT} -radix symbolic /RISCVSC_TB/DUV/CONTROL_UNIT/ALU_Src_o
add wave -noupdate -expand -group {CONTROL UNIT} -radix symbolic /RISCVSC_TB/DUV/CONTROL_UNIT/Reg_Write_o
add wave -noupdate -expand -group {CONTROL UNIT} -radix symbolic -radixshowbase 0 /RISCVSC_TB/DUV/CONTROL_UNIT/ALU_Op_o
add wave -noupdate -expand -group {ALU CONTROL} -radix symbolic /RISCVSC_TB/DUV/ALU_CONTROL_UNIT/funct7_i
add wave -noupdate -expand -group {ALU CONTROL} -radix symbolic -radixshowbase 0 /RISCVSC_TB/DUV/ALU_CONTROL_UNIT/ALU_Op_i
add wave -noupdate -expand -group {ALU CONTROL} -radix symbolic -radixshowbase 0 /RISCVSC_TB/DUV/ALU_CONTROL_UNIT/funct3_i
add wave -noupdate -expand -group {ALU CONTROL} -radix symbolic -radixshowbase 0 /RISCVSC_TB/DUV/ALU_CONTROL_UNIT/ALU_Operation_o
add wave -noupdate -expand -group {PROGRAM MEMORY} -radix unsigned /RISCVSC_TB/DUV/PROGRAM_MEMORY/Address_i
add wave -noupdate -expand -group {PROGRAM MEMORY} -radix hexadecimal /RISCVSC_TB/DUV/PROGRAM_MEMORY/Instruction_o
add wave -noupdate -expand -group T1 -radix hexadecimal /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataInput
add wave -noupdate -expand -group T1 -radix unsigned /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataOutput
add wave -noupdate -expand -group T2 -radix unsigned /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_t2/DataOutput
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 167
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {67 ns}
