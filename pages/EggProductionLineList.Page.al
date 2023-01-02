page 50107 "Egg Production Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Production Line";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Chicken No."; Rec."Chicken No.")
                {
                    ApplicationArea = All;
                    Caption = 'Chicken No.';
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;
                    Caption = 'Chicken Description';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    Caption = 'Document No.';
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ApplicationArea = All;
                    Caption = 'Egg Production Date';
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ApplicationArea = All;
                    Caption = 'Egg Type Code';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
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