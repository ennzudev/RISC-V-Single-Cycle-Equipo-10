/******************************************************************
* Description
*	This is the control unit for the ALU. It receves a signal called 
*	ALUOp from the control unit and signals called funct7 and funct3  from
*	the instruction bus.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/ //Ayuda a simplificar la complejidad de la alu

module ALU_Control
(
	input funct7_i, 
	input [2:0] ALU_Op_i,
	input [2:0] funct3_i,
	

	output [3:0] ALU_Operation_o

);
//											  f7_aluop_f3
localparam R_Type_ADD				=	7'b0_000_000; //function7: 0 - aluop: 000 - function3: 000
localparam R_Type_SUB 				=	7'b1_000_000; //function7: 1 - aluop: 000 - function3: 000
localparam I_Type_ADDI				=	7'bx_001_000; //function7: x - aluop: 001 - function3: 000 (x -> no nos importa que haya 0 o 1)
localparam U_Type_LUI 				=	7'bx_111_xxx; //function7: x - aluop: 111 (0x7) - function3: xxx (x -> no nos importa que haya 0 o 1)
localparam I_Type_ORI 				= 	7'bx_001_110; //function7: x - aluop: 001 - function3: 110 (0x6) (x -> no nos importa que haya 0 o 1)
localparam I_Type_SLLI				=	7'b0_001_001; //function7: 0 - aluop: 001 - function3: 001
localparam I_Type_SRLI 				=   7'b0_001_101; //function7: 0 - aluop: 001 - function3: 101 (0x5)

reg [3:0] alu_control_values;
wire [6:0] selector;

assign selector = {funct7_i, ALU_Op_i, funct3_i};

always@(selector)begin
	casex(selector)
												//valores arbitrarios custom que sea congruentes
		R_Type_ADD:			alu_control_values = 4'b0000; 
		I_Type_ADDI: 		alu_control_values = 4'b0000;
		R_Type_SUB: 		alu_control_values = 4'b0001;
		I_Type_ORI: 		alu_control_values = 4'b0011;
		U_Type_LUI: 		alu_control_values = 4'b0010;
		I_Type_SLLI:		alu_control_values = 4'b0100;
		I_Type_SRLI:		alu_control_values = 4'b0101;

		default: alu_control_values = 4'b00_00;
	endcase
end


assign ALU_Operation_o = alu_control_values;



endmodule
