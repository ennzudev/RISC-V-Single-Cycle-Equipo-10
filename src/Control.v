/******************************************************************
* Description
*	This is control unit for the RISC-V Microprocessor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction bus.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Control
(
	input [6:0]OP_i,
	
	
	output Branch_o,
	output Mem_Read_o,
	output Mem_to_Reg_o,
	output Mem_Write_o,
	output ALU_Src_o,
	output Reg_Write_o,
	output [2:0]ALU_Op_o
);

localparam R_Type				=7'h33; //OPCODE R INSTRUCTIONS 0110011
localparam I_Type				=7'h13; //OPCODE I INSTRUCTIONS 0010011
localparam U_Type 				=7'h37;// OPCODE U INSTRUCTIONS 0110111

reg [8:0] control_values;

always@(OP_i) begin
	case(OP_i)//                          		   876_54_3_210       <- posiciones de control values
		R_Type:					control_values= 9'b001_00_0_000; 
		I_Type:					control_values= 9'b001_00_1_001;
		U_Type: 				control_values= 9'b001_00_1_111;
		default:
			control_values= 9'b000_00_000;
		endcase
end	

assign Branch_o = control_values[8]; 		//control value posición 8   -- Bit en 0 para denegar ningún branch ya que no es una operacion de salto

assign Mem_to_Reg_o = control_values[7]; 	//control value posición 7   -- Bit en 0 para dirigir el resultado desde el Mux hacia el Register File

assign Reg_Write_o = control_values[6]; 	//control value posición 6   -- Bit en 1 para permitir la escritura del resultado en un registro -> Register File

assign Mem_Read_o = control_values[5]; 		//control value posición 5   -- Bit en 0 Para denegar la lectura desde la memoria ya que se leen los registros : No se accede a memoria  de datos.

assign Mem_Write_o = control_values[4]; 	//control value posición 4   -- Bit en 0 Para denegar la escritura en la memoria ya que se escribe en los registros : No se accede a memoria  de datos.

assign ALU_Src_o = control_values[3]; 		//control value posición 3   -- Es el resultado del mux previo a la ALU -> Entrada B (0 para reg o 1 para imm)

assign ALU_Op_o = control_values[2:0];		//control value posición 0-2 -- 3 bits que indican el valor de operacion hacia la alu, es custom lo elegimos nosotros que sea congruente control values y alu op para las operaciones en ALU_control.v

endmodule
