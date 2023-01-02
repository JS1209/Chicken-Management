codeunit 50100 Armstrong
{
    trigger OnRun()
    begin
    end;

    local procedure PowerCheck(num: Integer): Integer
    var
        counter: Integer;
    begin
        counter := 0;
        while num > 0 do begin
            num := Round((num / 10), 1, '<');
            counter += 1;
        end;
        exit(counter);
    end;

    local procedure CalculateSum(num: Integer; power: Integer): Integer
    var
        result: Integer;
    begin
        while num >= 1 do begin
            result += Power(num MOD 10, power);
            num := Round((num / 10), 1, '<');
        end;
        exit(result);
    end;

    procedure IsArmstrong(num: Integer): Integer
    var
        power, result : Integer;
    begin
        if (num < 0) or (num > 100000) then begin
            Message('Number not in range of 0 .. 100000');
            exit;
        end;

        power := PowerCheck(num);
        result := CalculateSum(num, power);

        if (result = num) then
            exit(num);
        exit(-1);
    end;

    procedure checkRange(start: Integer; term: Integer): Text
    var
        numbers: Text;

    begin
        if term > 100000 then begin
            Message('Range too wide');
            exit;
        end;
        while start <= term do begin
            if (IsArmstrong(start) = start) then begin
                numbers += format(start) + '\';
            end;
            start += 1;
        end;
        exit(numbers);
    end;
}