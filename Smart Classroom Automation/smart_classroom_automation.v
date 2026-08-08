module smart_classroom_automation(

input clk,
input reset,
input person_detect,
input class_mode,
input temperature_high,

output reg light,
output reg fan,
output reg projector

);

always @(posedge clk or posedge reset)
begin

if(reset)
begin
    light <= 0;
    fan <= 0;
    projector <= 0;
end

else
begin

    if(person_detect)
    begin
        light <= 1;

        if(temperature_high)
            fan <= 1;
        else
            fan <= 0;

        if(class_mode)
            projector <= 1;
        else
            projector <= 0;
    end
    else
    begin
        light <= 0;
        fan <= 0;
        projector <= 0;
    end

end

end

endmodule