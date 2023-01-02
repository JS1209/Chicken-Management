page 50109 ArmstrongPagina
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(Getal; Getal)
                {
                    ApplicationArea = All;
                }
            }
            group(Output)
            {
                field(Armstrong; check)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
            group(Range)
            {
                field(Start; Start)
                {
                    ApplicationArea = All;
                }
                field(Einde; Einde)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Check getal")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    check := false;
                    return := CU.IsArmstrong(getal);
                    if return > 0 then begin
                        check := true;
                        Message('It is an Armstrong number!');
                    end else
                        Message('It is not an Armstrong number.');
                end;
            }
            action("Check range")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                begin
                    numbers := CU.checkRange(Start, Einde);
                    if (StrLen(numbers) = 0) then
                        Message('There are no Armstrong numbers in this range.')
                    else
                        Message(numbers);
                end;
            }
        }
    }

    var
        getal, return, Start, Einde, num : Integer;
        check: Boolean;
        numbers: Text;
        CU: Codeunit Armstrong;
}