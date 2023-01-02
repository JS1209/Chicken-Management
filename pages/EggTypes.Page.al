page 50103 "Egg Types"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Type";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Code of the type of egg';
                }
                field("Description"; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                ApplicationArea = All;
                ToolTip = 'Insert default egg types.';
                Image = Picture;

                trigger OnAction();
                var
                    EggType: Record "Egg Type";
                    EggTypeNotEmptyErr: Label 'There are already Egg Types in the table.';
                begin
                    if EggType.IsEmpty() then begin
                        EggType.InsertEggType('EggType01', 'Egg Type 01');
                        EggType.InsertEggType('EggType02', 'Egg 3ype 02');
                        EggType.InsertEggType('EggType03', 'Egg Type 03');
                    end else
                        Message(EggTypeNotEmptyErr);
                end;
            }
        }
    }
}