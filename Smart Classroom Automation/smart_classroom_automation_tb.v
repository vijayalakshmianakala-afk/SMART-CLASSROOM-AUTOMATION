`timescale 1ns/1ps

module smart_classroom_automation_tb;

reg clk;
reg reset;
reg person_detect;
reg class_mode;
reg temperature_high;

wire light;
wire fan;
wire projector;

smart_classroom_automation DUT(

.clk(clk),
.reset(reset),
.person_detect(person_detect),
.class_mode(class_mode),
.temperature_high(temperature_high),

.light(light),
.fan(fan),
.projector(projector)

);

always #5 clk = ~clk;

initial
begin

clk = 0;
reset = 1;
person_detect = 0;
class_mode = 0;
temperature_high = 0;

#10;
reset = 0;

$display("-----------------------------------------------");
$display("Time Person Temp Class Light Fan Projector");
$display("-----------------------------------------------");

// Classroom Empty
#10;
$display("%0t   %b      %b    %b     %b     %b    %b",
$time,person_detect,temperature_high,class_mode,light,fan,projector);

// Students Enter
person_detect = 1;
#10;
$display("%0t   %b      %b    %b     %b     %b    %b",
$time,person_detect,temperature_high,class_mode,light,fan,projector);

// Temperature High
temperature_high = 1;
#10;
$display("%0t   %b      %b    %b     %b     %b    %b",
$time,person_detect,temperature_high,class_mode,light,fan,projector);

// Class Starts
class_mode = 1;
#10;
$display("%0t   %b      %b    %b     %b     %b    %b",
$time,person_detect,temperature_high,class_mode,light,fan,projector);

// Classroom Empty Again
person_detect = 0;
temperature_high = 0;
class_mode = 0;
#10;
$display("%0t   %b      %b    %b     %b     %b    %b",
$time,person_detect,temperature_high,class_mode,light,fan,projector);

$display("-----------------------------------------------");

$finish;

end

endmodule