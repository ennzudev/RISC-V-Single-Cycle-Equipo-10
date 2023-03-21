onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /RISCVSC_TB/clk_tb
add wave -noupdate /RISCVSC_TB/reset_tb
add wave -noupdate -expand -group {PROGRAM MEMORY} -itemcolor Blue -radix unsigned /RISCVSC_TB/DUV/PROGRAM_MEMORY/Address_i
add wave -noupdate -expand -group {PROGRAM MEMORY} -itemcolor {Yellow Green} -radix hexadecimal /RISCVSC_TB/DUV/PROGRAM_MEMORY/Instruction_o
add wave -noupdate -expand -group {CONTROL UNIT} -itemcolor Blue -label {OP_i (Instruction Type)} -radix symbolic -radixshowbase 0 /RISCVSC_TB/DUV/CONTROL_UNIT/OP_i
add wave -noupdate -expand -group {CONTROL UNIT} -itemcolor {Yellow Green} -radix symbolic /RISCVSC_TB/DUV/CONTROL_UNIT/ALU_Src_o
add wave -noupdate -expand -group {CONTROL UNIT} -itemcolor {Yellow Green} -radix symbolic /RISCVSC_TB/DUV/CONTROL_UNIT/ALU_Op_o
add wave -noupdate -expand -group {CONTROL UNIT} -itemcolor {Yellow Green} -radix symbolic /RISCVSC_TB/DUV/CONTROL_UNIT/Reg_Write_o
add wave -noupdate -expand -group {ALU CONTROL} -itemcolor Blue -radix unsigned /RISCVSC_TB/DUV/ALU_CONTROL_UNIT/funct7_i
add wave -noupdate -expand -group {ALU CONTROL} -itemcolor Blue -radix symbolic /RISCVSC_TB/DUV/ALU_CONTROL_UNIT/ALU_Op_i
add wave -noupdate -expand -group {ALU CONTROL} -itemcolor Blue -radix symbolic /RISCVSC_TB/DUV/ALU_CONTROL_UNIT/funct3_i
add wave -noupdate -expand -group {ALU CONTROL} -itemcolor {Yellow Green} -label {ALU_Operation_o (Instruction)} -radix binary -radixshowbase 0 /RISCVSC_TB/DUV/ALU_CONTROL_UNIT/ALU_Operation_o
add wave -noupdate -expand -group ALU -itemcolor Blue -radix binary /RISCVSC_TB/DUV/ALU_UNIT/ALU_Operation_i
add wave -noupdate -expand -group ALU -itemcolor Blue -radix hexadecimal /RISCVSC_TB/DUV/ALU_UNIT/A_i
add wave -noupdate -expand -group ALU -itemcolor Blue -radix hexadecimal /RISCVSC_TB/DUV/ALU_UNIT/B_i
add wave -noupdate -expand -group ALU -itemcolor {Yellow Green} -radix hexadecimal -radixshowbase 0 /RISCVSC_TB/DUV/ALU_UNIT/ALU_Result_o
add wave -noupdate -expand -group Registers -label s0 /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataOutput
add wave -noupdate -expand -group Registers -label s1 /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataOutput
add wave -noupdate -expand -group Registers -label s2 /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_s2/DataOutput
add wave -noupdate -expand -group Registers -label s3 /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_s3/DataOutput
add wave -noupdate -expand -group Registers -label t0 /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataOutput
add wave -noupdate -expand -group Registers -label t1 /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataOutput
add wave -noupdate -expand -group Registers -label t2 /RISCVSC_TB/DUV/REGISTER_FILE_UNIT/Register_t2/DataOutput
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 228
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
WaveRestoreZoom {0 ns} {35 ns}