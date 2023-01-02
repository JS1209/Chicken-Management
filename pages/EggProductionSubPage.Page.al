page 50104 "Egg Production Subpage"
{
    PageType = ListPart;
    SourceTable = "Egg Production Line";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Chicken No."; Rec."Chicken No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Number of the Chicken';
                    Caption = 'Chicken No.';
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Description of the Chicken';
                    Caption = 'Chicken Description';
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Date of production';
                    Caption = 'Date of production of the eggs';
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Code of the type of egg';
                    Caption = 'Egg Type Code';
                }
                field("Egg Type Description"; Rec."Egg Type Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Description of the type of egg';
                    Caption = 'Egg Type Description';
                }
                field("Quantity"; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Quantity of eggs produced';
                    Caption = 'Quantity';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}